import numpy as np

def electre_iii_method(decision_matrix, criteria_weights, concordance_thresholds, discordance_thresholds):
    """
    Perform ELECTRE III multi-criteria decision-making analysis for a complex scenario.

    Parameters:
        decision_matrix (numpy.ndarray): 2D array representing the decision matrix with rows as alternatives and columns as criteria.
        criteria_weights (list or numpy.ndarray): List of criteria weights. The length should match the number of criteria.
        concordance_thresholds (list or numpy.ndarray): List of concordance thresholds for each criterion. Same length as criteria_weights.
        discordance_thresholds (list or numpy.ndarray): List of discordance thresholds for each criterion. Same length as criteria_weights.

    Returns:
        list: List of ranked alternatives.
    """
    num_alternatives, num_criteria = decision_matrix.shape
    rankings = []

    # Step 1: Normalize the decision matrix
    normalized_matrix = decision_matrix / decision_matrix.max(axis=0)

    # Step 2: Calculate concordance and discordance for each pair of alternatives
    concordance_matrix = np.zeros((num_alternatives, num_alternatives))
    discordance_matrix = np.zeros((num_alternatives, num_alternatives))

    for i in range(num_alternatives):
        for j in range(i + 1, num_alternatives):
            concordance_values = [
                (normalized_matrix[i, k] >= normalized_matrix[j, k]) * criteria_weights[k]
                if normalized_matrix[i, k] >= concordance_thresholds[k]
                else 0
                for k in range(num_criteria)
            ]

            discordance_values = [
                max(0, normalized_matrix[j, k] - normalized_matrix[i, k]) * criteria_weights[k]
                if normalized_matrix[j, k] >= discordance_thresholds[k]
                else 0
                for k in range(num_criteria)
            ]

            concordance_matrix[i, j] = sum(concordance_values)
            discordance_matrix[i, j] = max(discordance_values)

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

# Example usage
if __name__ == "__main__":
    # Example decision matrix (4 alternatives and 3 criteria)
    # Here 4 alternatives will be worker_nodes and 3 criteria will be CPU,Memory and Bandwidth
    decision_matrix = np.array([
        [3, 5, 2],
        [2, 3, 4],
        [4, 4, 3],
        [5, 2, 2]
    ])

    # Example criteria weights (sum to 1)
    criteria_weights = [0.4, 0.3, 0.3]

    # Example concordance and discordance thresholds for each criterion
    concordance_thresholds = [0.6, 0.7, 0.8]
    discordance_thresholds = [0.3, 0.2, 0.1]

    # Perform ELECTRE III analysis
    ranked_alternatives = electre_iii_method(decision_matrix, criteria_weights, concordance_thresholds, discordance_thresholds)

    # Print the ranked alternatives
    print("Ranked Alternatives:", ranked_alternatives)

