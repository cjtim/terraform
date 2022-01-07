#!/bin/sh
TMP_FILE=svc.json
echo "$SVC_BASE64" | base64 -d > $TMP_FILE

export GOOGLE_CREDENTIALS=$(pwd)/$TMP_FILE 
export TF_VAR_PROJECT_ID=
export TF_VAR_IP_ADDR=
export TF_VAR_SSH_USER=
export TF_VAR_SSH_PUB_KEY=


terraform init -input=false \
    -backend-config="bucket=terraform-${TF_VAR_PROJECT_ID}" \
    -backend-config="prefix=prod"

terraform plan -input=false

terraform apply -input=false

rm -rf $TMP_FILE