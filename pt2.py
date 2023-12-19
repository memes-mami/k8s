from prometheus_api_client import PrometheusConnect

# Prometheus API URL
prometheus_url = "http://localhost:30000"

# Create a PrometheusConnect object
prom = PrometheusConnect(url=prometheus_url, disable_ssl=True)  # Use disable_ssl=True if you don't have SSL configured

# Query for a specific metric
query = 'up == 1'  # Replace with your Prometheus query
result = prom.custom_query(query)

# Print the result
print(f"Query Result: {result}")

# Example: Get CPU usage metric for a specific instance
cpu_query = '100 - (avg by (instance) (irate(node_cpu_seconds_total{mode="idle"}[1m])) * 100)'
cpu_result = prom.custom_query_range(cpu_query, '5m', end_time='now')

# Print the CPU result
print(f"CPU Usage Result: {cpu_result}")
