```bash
# export AWS credentials
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
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