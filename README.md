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
- [ ] Create TFE initial user
- [ ] External Services: Postgres & S3 bucket 


- Create a file `variables.auto.tfvars` with the following content
```hcl
tfe_hostname = "daniela-docker"
tfe_version  = "v202312-1"
```

- Export AWS environment variables

```shell
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_SESSION_TOKEN=
export AWS_REGION="eu-west-1" 
```