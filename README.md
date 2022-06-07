
```

# Checkout consul (TODO: merge the branch to main branch)
git clone -b upgrade-packer-version git@github.com:hashicorp/consul.git

terraform init

terraform apply -var-file=./vars.tfvars 
```
