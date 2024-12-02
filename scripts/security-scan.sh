#!/bin/bash
set -e

# Install trivy if not exists
if ! command -v trivy &> /dev/null; then
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin
fi

for chart in $(find ./charts -name Chart.yaml); do
  echo "Scanning $(dirname $chart)..."
  
  # Extract image references from values.yaml
  images=$(grep "repository:" "$(dirname $chart)/values.yaml" | awk '{print $2}')
  
  for image in $images; do
    echo "Scanning image: $image"
    trivy image --severity HIGH,CRITICAL "$image" || true
  done
done
