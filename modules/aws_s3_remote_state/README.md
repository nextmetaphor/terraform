```bash
# connect to aws
aws configure
export AWS_DEFAULT_REGION="us-east-1"

# download providers and validate files
terraform init
terraform validate

# set the bucket name
export TF_VAR_bucket_name="terraform-remote-state-123456"

# plan the deployment
terraform plan -out=tfplan

# deploy the s3 bucket
terraform apply tfplan
terraform show

# destroy the s3 bucket
terraform destroy -auto-approve
```