# tfe-fdo-docker
This repository will install TFE FDO Docker https://developer.hashicorp.com/terraform/enterprise/flexible-deployments/install/docker/install



What do I need:

- [X] AWS Instance that has 4 CPU and 16GB minimum as per [official requirements](https://developer.hashicorp.com/terraform/enterprise/replicated/architecture/reference-architecture/aws#terraform-enterprise-server-ec2-via-auto-scaling-group)
- [X] DNS hostname for the server
- [X] Valid certificates created with Let's encrypt, [see this Github repo](https://github.com/dlavric/create-certificates) that will be incorporated here
- [X] Automate the installation of Docker on the EC2 instance
- [X] Automate the adding of the certificates to the `/certs` folder
- [X] Automate pulling the Docker container and install TFE with the `compose.yaml` file
- [X] Add your license file to the repository folder and ignore it in the gitignore file
- [ ] Add an output for the IP of my instance 
- [ ] Add an output for the hostname of my instance
- [X] Create TFE initial user
- [ ] External Services: Postgres & S3 bucket 


- Create a file `variables.auto.tfvars` with the following content
```hcl
tfe_version      = "v202312-1"
tfe_hostname     = "daniela-docker1.tf-support.hashicorpdemo.com"
tfe_subdomain    = "daniela-docker1"
tfe_domain       = "tf-support.hashicorpdemo.com"
email            = "<your-email"
username         = "dlavric"
password         = "DanielaLavric"
certs_bucket     = "daniela-fdo-certs1"
license_bucket   = "daniela-fdo-license1"
license_filename = "fdo-license.txt"
key_pair         = "daniela-fdo-key2"
enc_password     = "encpassword" 
```

- Export AWS environment variables
```shell
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
export AWS_REGION="eu-west-1" 
```

- Download all the Terraform dependencies for modules and providers
```
terraform init
```

- Apply all the changes
```
terraform apply
```

- Wait a couple of minutes for TFE to become online

- Access the TFE environment at the following URL: https://daniela-docker1.tf-support.hashicorpdemo.com

- Destroy you infrastructure
```
terraform destroy
```