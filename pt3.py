from prometheus_api_client import PrometheusConnect

def get_prometheus_metrics(prometheus_url, query):
    prom = PrometheusConnect(url=prometheus_url, disable_ssl=True)
    result = prom.custom_query(query)
    return result

if __name__ == "__main__":
    # Replace 'http://prometheus-service:9090' with the actual Prometheus service URL
    prometheus_url = "http://localhost:30000/"

    # Replace 'up' with the actual Prometheus query you want to execute
    prometheus_query = "up"

    # Fetch Prometheus metrics
    metrics = get_prometheus_metrics(prometheus_url, prometheus_query)

    # Print the metrics
    print("Prometheus Metrics:")
    print(metrics)
