# tfe-fdo-docker
This repository will install TFE FDO Docker https://developer.hashicorp.com/terraform/enterprise/flexible-deployments/install/docker/install



What do I need:

- [ ] AWS Instance that has 4 CPU and 16GB minimum as per [official requirements](https://developer.hashicorp.com/terraform/enterprise/replicated/architecture/reference-architecture/aws#terraform-enterprise-server-ec2-via-auto-scaling-group)
- [ ] DNS hostname for the server
- [ ] Valid certificates created with Let's encrypt, [see this Github repo](https://github.com/dlavric/create-certificates) that will be incorporated here
- [ ] Automate the installation of Docker on the EC2 instance
- [ ] Automate the adding of the certificates to the `/certs` folder
- [ ] Automate pulling the Docker container and install TFE with the `compose.yaml` file
- [ ] Add your license file to the repository folder and ignore it in the gitignore file 
- [ ] Create TFE initial user
- [ ] External Services: Postgres & S3 bucket 
