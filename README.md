# Digital Ocean Terraform Templates

## Modules

[Basic Digital Ocaen Droplet](terraform/modules/digital_ocean_droplet/README.md)

## Crete Backend Config to use with s3
1. Run `aws configure --profile terraformbackend` enter your credentials when prompted
2. Run `export AWS_PROFILE=terraformbackend`
3. Create a `.tfbackend` file with the following info

```
key="dev/terraform.tfstate"
bucket="backend-terraform"
region="us-west-1"
```

4. Run Terraform init with the `-backend-config=<.tfbackend file>`

## My Development environment
1. Export your digital ocean PAT and cd into the development folder. 
**Optional create a `.tfvars` file for these variables**
**Optional create a `.tfbackend`**

```
export DO_API_TOKEN=<DIGITALOCEAN_PERSONAL_ACCESS_TOKEN>
export DOMAIN_NAME=<INFRA DOMAIN>
export TF_VAR_PUBLIC_SSH_KEY=<PUBLIC SSH KEY>
export TF_VAR_domain_name="$DOMAIN_NAME"
export TF_VAR_DO_API_TOKEN="$DO_API_TOKEN"
echo $TF_VAR_domain_name
echo $TF_VAR_DO_API_TOKEN
cd environments/dev
```

2. run `terraform init`
3. run `terraform plan`
4. Verify the resources in plan
5. run `terraform apply`
6. After you are finished in the enviroment or wish to tear it down `terraform destroy`

### Commands with Variables instead

`terraform init -var "DO_API_TOKEN=${DO_API_TOKEN}" -var "domain_name=${DOMAIN_NAME}"`

`terraform plan -var "do_token=${DO_API_TOKEN}" -var "domain_name=${DOMAIN_NAME}"`

`terraform apply -var "do_token=${DO_API_TOKEN}" -var "domain_name=${DOMAIN_NAME}"`

`terraform destroy -var "do_token=${DO_API_TOKEN}" -var "domain_name=${DOMAIN_NAME}"`

