# tfe-fdo-docker
This repository will install TFE FDO Docker https://developer.hashicorp.com/terraform/enterprise/flexible-deployments/install/docker/install



What do I need:

- [ ] AWS Instance that has 4 CPU and 16GB minimum as per [official requirements](https://developer.hashicorp.com/terraform/enterprise/replicated/architecture/reference-architecture/aws#terraform-enterprise-server-ec2-via-auto-scaling-group)
- [ ] DNS hostname for the server
- [ ] Valid certificates created with Let's encrypt, [see this Github repo](https://github.com/dlavric/create-certificates) that will be incorporated here
- [ ] External Services: Postgres & S3 bucket   