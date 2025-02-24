#!/bin/sh

chmod +x entrypoint.sh
terraform init
terraform plan
terraform apply -auto-approve
#terraform destroy -auto-approve

/bin/sh