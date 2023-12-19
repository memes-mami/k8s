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

