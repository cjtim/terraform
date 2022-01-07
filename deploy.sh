#!/bin/sh

echo "$SVC_BASE64" | base64 -d > svc.json

export GOOGLE_CREDENTIALS=$(pwd)/svc.json 
# export TF_VAR_PROJECT_ID=
# export TF_VAR_IP_ADDR=

terraform init -input=false \
    -backend-config="bucket=terraform-${TF_VAR_PROJECT_ID}" \
    -backend-config="prefix=prod"