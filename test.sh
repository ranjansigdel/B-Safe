#!/bin/bash
echo "Running tests..."
# Here you can add real tests, e.g., checking if the application is running
curl -s http://localhost:8081 || { echo "Test failed: Application is not running."; exit 1; }
echo "Test passed!"
exit 0
