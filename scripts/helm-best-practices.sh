#!/bin/bash
set -e

for chart in $(find ./charts -name Chart.yaml); do
  echo "Checking $(dirname $chart)..."
  
  # Check for required files
  for file in values.yaml README.md; do
    if [ ! -f "$(dirname $chart)/$file" ]; then
      echo "Error: Missing $file in $(dirname $chart)"
      exit 1
    fi
  done
  
  # Validate values schema if exists
  if [ -f "$(dirname $chart)/values.schema.json" ]; then
    echo "Validating values schema..."
    helm template $(dirname $chart) --validate
  fi
  
  # Check for resource limits
  if ! grep -q "resources:" "$(dirname $chart)/values.yaml"; then
    echo "Warning: No resource limits defined in $(dirname $chart)/values.yaml"
  fi
  
  # Check for probes
  if ! grep -q "livenessProbe:" "$(dirname $chart)/templates/deployment.yaml"; then
    echo "Warning: No liveness probe defined in deployment"
  fi
done