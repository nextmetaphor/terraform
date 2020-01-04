```bash
# connect to aws
aws configure
export AWS_DEFAULT_REGION="us-east-1"

# download providers and validate files
terraform init
terraform validate

# plan the deployment
terraform plan -out=tfplan -var bucket_name="terraform-remote-state-123456"

# deploy the s3 bucket
terraform apply tfplan
terraform show

# destroy the s3 bucket
terraform destroy -auto-approve -var bucket_name="terraform-remote-state-123456"
```