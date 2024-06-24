# Digital Ocean Terraform Templates

## Modules

[Basic Digital Ocaen Droplet](terraform/modules/digital_ocean_droplet/README.md)


## My Development environment
1. Export your digital ocean PAT and cd into the development folder. 
**Optional create a `.tfvars` file for these variables**

```
export DO_PAT=<DIGITALOCEAN_PERSONAL_ACCESS_TOKEN>
export DOMAIN_NAME=<INFRA DOMAIN>
cd environments/dev
```

2. run `terraform init -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`
3. run `terraform plan -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`
4. Verify the resources in plan
5. run `terraform apply -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`
6. After you are finished in the enviroment or wish to tear it down `terraform destroy -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`

### Commands
`terraform init -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`

`terraform plan -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`

`terraform apply -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`

`terraform destroy -var "do_token=${DO_PAT}" -var "domain_name=${DOMAIN_NAME}"`

