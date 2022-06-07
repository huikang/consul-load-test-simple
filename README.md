
```

# Checkout consul (TODO: merge the branch to main branch)
git clone -b upgrade-packer-version git@github.com:hashicorp/consul.git

terraform init
```

An example of `vars.tfvars`

```
aws_region="us-east-2"
vpc_name="consul-load-test"
ami_owners=["977604411308"]
consul_version="1.12.0"
```

Deploy and run the load test

```
terraform apply -var-file=./vars.tfvars 
```
