#!/bin/bash

# Run bash2.sh in the background
./bash2.sh &

# Capture the PID of the background process (bash2)
bash2_pid=$!

# Function to handle termination signals
terminate_bash2() {
  echo "Terminating bash2..."
  kill -TERM $bash2_pid
  exit
}

# Trap termination signals
trap terminate_bash2 SIGTERM SIGINT

# Your main logic for bash1 goes here
echo "bash1 is running..."

# Simulate a long-running task
#sleep 10

# When bash1 stops, it will send a termination signal to bash2
echo "bash1 is stopping..."

# Optionally, you can wait for the background process to finish
wait $bash2_pid

echo "bash1 is stopped."
