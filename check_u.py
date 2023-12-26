import pandas as pd
import subprocess
csv2 = 'temp_metric.csv'

def run_bash_script(script_path, script_arguments):
    try:
        # Combine the 'bash' command with the script path and arguments
        command = ['bash', script_path] + script_arguments
        subprocess.run(command, check=True)
        print("Bash script executed successfully.")
    except subprocess.CalledProcessError as e:
        print(f"Error: Bash script execution failed. {e}")

bash_s= 'temp_metric.sh'
run_bash_script(bash_s, [])


# Read the CSV file into a DataFrame
csv_file_path = 'node_metrics.csv'
df = pd.read_csv(csv_file_path)

# Specify the column that may contain <unknown>
unknown_column = 'CPU(cores)'

# Count the number of rows with <unknown> in the specified column
unknown_rows_count = df[df[unknown_column].str.contains('<unknown>')].shape[0]

print(f'Number of rows with <unknown> values in {unknown_column}: {unknown_rows_count}')
