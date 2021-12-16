#!/usr/bin/env bash
set -e
KEY=$(echo -n ${VULTR_API_KEY} | base64)

cat << EOF > testdata/vultr/api-key.yaml
apiVersion: v1
kind: Secret
metadata:
  name: vultr-credentials
  namespace: cert-manager
type: Opaque
data:
  apiKey: "${KEY}"
EOF