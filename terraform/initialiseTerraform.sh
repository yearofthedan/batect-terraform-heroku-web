#! /usr/bin/env sh

terraform workspace select dev_env || terraform workspace new dev_env
terraform init -backend-config="conn_str=$TERRAFORM_REMOTE_DB_URL"
