import requests

def get_application_count(node_name):
    # Assuming you have a REST API or some way to get information about applications in a node
    # Replace 'YOUR_API_ENDPOINT' with the actual API endpoint or method you're using
    api_endpoint = f'YOUR_API_ENDPOINT/{node_name}/applications'

    try:
        # Make a request to the API
        response = requests.get(api_endpoint)

        # Check if the request was successful (status code 200)
        if response.status_code == 200:
            # Parse the response JSON
            data = response.json()

            # Assuming the API response provides a list of applications
            applications = data.get('applications', [])

            # Count the number of applications
            application_count = len(applications)

            return application_count

        else:
            print(f"Error: Unable to fetch data. Status Code: {response.status_code}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    # Get node_name from terminal input
    node_name = input("Enter the node name: ")

    # Get the application count for the specified node
    count = get_application_count(node_name)

    if count is not None:
        print(f"Number of applications in node '{node_name}': {count}")
    else:
        print("Failed to retrieve application count.")
