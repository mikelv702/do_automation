# Digital Ocean Terraform Templates

## Modules

[Basic Digital Ocaen Droplet](modules/digital_ocean_droplet/README.md)

## Development environment
1. Export your digital ocean PAT and cd into the development folder.

```
export DO_PAT=<DIGITALOCEAN_PERSONAL_ACCESS_TOKEN>
cd environments/dev
```

2. run `terraform init -var "do_token=${DO_PAT}"`
3. run `terraform plan -var "do_token=${DO_PAT}"`
4. Verify the resources in plan
5. run `terraform apply -var "do_token=${DO_PAT}"`
6. After you are finished in the enviroment or wish to tear it down `terraform destroy -var "do_token=${DO_PAT}"`

### Commands
`terraform init -var "do_token=${DO_PAT}"`

`terraform plan -var "do_token=${DO_PAT}"`

`terraform apply -var "do_token=${DO_PAT}"`

`terraform destroy -var "do_token=${DO_PAT}"`

