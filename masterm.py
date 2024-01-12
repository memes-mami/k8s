import subprocess

def get_master_metrics():
    try:
        # Run kubectl top nodes command to get metrics for all nodes
        command = ['kubectl', 'top', 'nodes']
        output = subprocess.check_output(command, text=True)

        # Parse the output to get metrics for the master node
        lines = output.strip().split('\n')
        
        # Assuming the first column is the node name and the second column is the master node name
        header = lines[0]
        master_node_index = header.split().index('master') if 'master' in header.split() else None

        if master_node_index is not None:
            master_metrics = lines[1].split()[master_node_index:]
            return master_metrics
        else:
            print("Error: 'master' column not found in the output.")
            return None

    except subprocess.CalledProcessError as e:
        print(f"Error: {e}")
        return None

def main():
    master_metrics = get_master_metrics()

    if master_metrics:
        print("Metrics for the master node:")
        for metric in master_metrics:
            print(metric)
    else:
        print("Failed to retrieve metrics for the master node.")

if __name__ == "__main__":
    main()
