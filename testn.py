
import pandas as pd
import numpy as np

def normalize_criteria(criteria):
    return criteria / np.linalg.norm(criteria)

def electre_iii_method(decision_matrix, concordance_thresholds, discordance_thresholds):
    concordance_matrix = (decision_matrix >= concordance_thresholds).astype(int)
    discordance_matrix = (decision_matrix <= discordance_thresholds).astype(int)

    concordance_score = np.sum(concordance_matrix, axis=1)
    discordance_score = np.sum(discordance_matrix, axis=1)

    outranking_score = concordance_score - discordance_score

    return outranking_score

# Load the dataset from CSV file
csv_file_path = 'node_metrics.csv'
df = pd.read_csv(csv_file_path)

# Replace '<unknown>' with NaN
df.replace('<unknown>', np.nan, inplace=True)

# Handle % in CPU and Memory columns
df['CPU(%)'] = df['CPU(%)'].str.rstrip('%').astype(float) / 100.0
df['Memory(%)'] = df['Memory(%)'].str.rstrip('%').astype(float) / 100.0

# Drop rows with NaN values
df.dropna(subset=['CPU(%)', 'Memory(%)'], inplace=True)

# Exclude the 'master' node
df = df[df['Node'] != 'master']

# Define criteria weights for TOPSIS
criteria_weights_topsis = {
    'CPU(%)': 0.5,
    'Memory(%)': 0.5
}

# Define concordance and discordance thresholds for ELECTRE III
concordance_thresholds = np.array([0.5, 0.7])  # Adjust these thresholds as needed
discordance_thresholds = np.array([0.2, 0.3])  # Adjust these thresholds as needed

# Specify the window size
window_size = 20

# Divide the dataset into windows
chunks = [df[i:i + window_size] for i in range(0, len(df), window_size)]

# Process each window
for chunk_df in chunks:
    # Normalize criteria for TOPSIS
    normalized_cpu_topsis = normalize_criteria(chunk_df['CPU(%)'])
    normalized_memory_topsis = normalize_criteria(chunk_df['Memory(%)'])

    # Create the decision matrix for TOPSIS
    decision_matrix_topsis = pd.DataFrame({
        'CPU(%)': normalized_cpu_topsis,
        'Memory(%)': normalized_memory_topsis
    })

    # Calculate TOPSIS scores
    distance_to_ideal = np.linalg.norm(decision_matrix_topsis - decision_matrix_topsis.max())
    distance_to_anti_ideal = np.linalg.norm(decision_matrix_topsis - decision_matrix_topsis.min())
    closeness_topsis = distance_to_anti_ideal / (distance_to_ideal + distance_to_anti_ideal)

    # Add the 'Closeness' column to the DataFrame
    chunk_df = chunk_df.copy()
    chunk_df['Closeness_TOPSIS'] = closeness_topsis

    #chunk_df.loc[:, 'Closeness_TOPSIS'] = closeness_topsis

    # Use ELECTRE III for further ranking within the group
    outranking_score_electre = electre_iii_method(decision_matrix_topsis.values, concordance_thresholds, discordance_thresholds)

    # Add the 'Outranking_Score_ELECTRE' column to the DataFrame
    #chunk_df.loc[:, 'Outranking_Score_ELECTRE'] = outranking_score_electre
    chunk_df['Outranking_Score_ELECTRE'] = outranking_score_electre

    # Rank nodes based on TOPSIS and ELECTRE III scores
    ranked_nodes_topsis = chunk_df.sort_values(by='Closeness_TOPSIS', ascending=False)['Node'].tolist()
    ranked_nodes_electre = chunk_df.sort_values(by='Outranking_Score_ELECTRE', ascending=False)['Node'].tolist()

    # Display the ranked nodes for the current window
    print(f"\nRanked Nodes TOPSIS (Window {len(chunks)}):")
    for i, node in enumerate(ranked_nodes_topsis, start=1):
        print(f"{i}. {node}")

    print(f"\nRanked Nodes ELECTRE III (Window {len(chunks)}):")
    for i, node in enumerate(ranked_nodes_electre, start=1):
        print(f"{i}. {node}")

ranked_workers_topsis=ranked_nodes_topsis
ranked_workers_electre=ranked_nodes_electre
print("Original Rankings - TOPSIS:")
print(ranked_workers_topsis)
print("\nOriginal Rankings - ELECTRE III:")
print(ranked_workers_electre)
