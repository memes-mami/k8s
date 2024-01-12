import subprocess
import random
import pandas as pd
import numpy as np
from kubernetes import client, config
from kubernetes import client, config
def get_zookeeper_pods_on_node(node_name):
    try:
        # Load kubeconfig file. If running inside a cluster, this step might be unnecessary.
        config.load_kube_config()

        # Create a Kubernetes API client
        v1 = client.CoreV1Api()

        # Get all pods across all namespaces
        pods_list = v1.list_pod_for_all_namespaces(watch=False)

        # Filter pods that are running on the specified node and labeled with 'app=zookeeper1'
        zookeeper_pods = [pod for pod in pods_list.items
                          if pod.spec.node_name == node_name and 'app' in pod.metadata.labels and pod.metadata.labels['app'] == 'zookeeper1']

        return zookeeper_pods
    except Exception as e:
        print(f"Error: {e}")
        return None

def run_bash_script(script_path, script_arguments):
    try:
        # Combine the 'bash' command with the script path and arguments
        command = ['bash', script_path] + script_arguments
        subprocess.run(command, check=True)
        print("Bash script executed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error: Bash script execution failed. {e}")
import pandas as pd
import numpy as np

def convert_to_percentage(value):
    try:
        return int(value.strip('%'))
    except ValueError:
        return -1  # Handle unknown values ("<unknown>")

def electre_iii_method(cpu_percentages, memory_percentages, criteria_weights, concordance_thresholds, discordance_thresholds):
    num_alternatives = len(cpu_percentages)
    rankings = []

    # Step 2: Calculate concordance and discordance for each pair of alternatives

    concordance_matrix = np.zeros((num_alternatives, num_alternatives))
    discordance_matrix = np.zeros((num_alternatives, num_alternatives))

    for i in range(num_alternatives):
        for j in range(i + 1, num_alternatives):
            cpu_i = convert_to_percentage(cpu_percentages[i])
            cpu_j = convert_to_percentage(cpu_percentages[j])
            memory_i = convert_to_percentage(memory_percentages[i])
            memory_j = convert_to_percentage(memory_percentages[j])

            # Handle unknown values ("<unknown>")
            if cpu_i == -1 or cpu_j == -1 or memory_i == -1 or memory_j == -1:
                concordance_matrix[i, j] = 0
                discordance_matrix[i, j] = 1
            else:
                cpu_concordance_value = 1 if cpu_i >= concordance_thresholds[0] and cpu_j >= concordance_thresholds[0] else 0
                memory_concordance_value = 1 if memory_i >= concordance_thresholds[1] and memory_j >= concordance_thresholds[1] else 0
                cpu_discordance_value = max(0, cpu_j - cpu_i) if cpu_j >= discordance_thresholds[0] else 0
                memory_discordance_value = max(0, memory_j - memory_i) if memory_j >= discordance_thresholds[1] else 0

                concordance_value = criteria_weights[0] * cpu_concordance_value + criteria_weights[1] * memory_concordance_value
                discordance_value = max(
                    criteria_weights[0] * cpu_discordance_value,
                    criteria_weights[1] * memory_discordance_value
                )

                concordance_matrix[i, j] = concordance_value
                discordance_matrix[i, j] = discordance_value

    # Step 3: Rank alternatives based on concordance and discordance
    for i in range(num_alternatives):
        outranking_score = sum(
            1 if concordance_matrix[i, j] >= 1 and discordance_matrix[i, j] == 0
            else 0
            for j in range(num_alternatives)
        )
        rankings.append((i, outranking_score))

    # Sort alternatives based on outranking score
    rankings.sort(key=lambda x: x[1], reverse=True)

    # Extract the ranked alternatives
    ranked_alternatives = [i for i, _ in rankings]

    return ranked_alternatives

if __name__ == "__main__":
    # Read the input CSV data
    df = pd.read_csv('node_metrics.csv')

    # Example criteria weights (sum to 1)
    criteria_weights = [0.5, 0.5]

    # Example concordance and discordance thresholds for 'CPU(%)' and 'Memory(%)'
    concordance_thresholds = [70, 80]
    discordance_thresholds = [20, 30]

    # Process data in chunks of 10 rows
    chunk_size = 10
    for i in range(0, len(df), chunk_size):
        chunk_df = df.iloc[i:i + chunk_size]

        # Extract 'Node' column for worker names
        worker_names = chunk_df['Node'].tolist()

        # Extract 'CPU(%)' and 'Memory(%)' columns for calculation
        cpu_percentages = chunk_df['CPU(%)'].tolist()
        memory_percentages = chunk_df['Memory(%)'].tolist()

        # Initialize rankings for the current chunk
        rankings = electre_iii_method(cpu_percentages, memory_percentages, criteria_weights, concordance_thresholds, discordance_thresholds)

        # Print the ranked alternatives (worker names) for the current chunk
        ranked_workers = [worker_names[i] for i in rankings]
        print(f"Ranked Workers (Chunk {i // chunk_size}): {ranked_workers}")
        print(f"{ranked_workers[0]}")
        bash_script_path = 'checkpoint.sh'
        node_name = ranked_workers[0]
        zookeeper_pods = get_zookeeper_pods_on_node(node_name)
        picked_zookeeper_pod = None  # Initialize the variable

        if len(zookeeper_pods) > 0:
     	    picked_zookeeper_pod = random.choice(zookeeper_pods)
    	    print(f"Picked Zookeeper Pod: Namespace: {picked_zookeeper_pod.metadata.namespace}, Pod Name: {picked_zookeeper_pod.metadata.name}")
        else:
    	    print(f"Failed to retrieve Zookeeper pods running on node '{node_name}'.")

        # Provide arguments as a list
        script_arguments = [ranked_workers[0], picked_zookeeper_pod.metadata.name if picked_zookeeper_pod else None]

        # Example Bash script execution
        bash_script_path = 'checkpoint.sh'
        run_bash_script(bash_script_path, script_arguments)
