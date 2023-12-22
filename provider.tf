terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
    acme = {
      source  = "vancluever/acme"
      version = "2.17.2"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

provider "acme" {
  # Configuration options
  server_url = "https://acme-staging-v02.api.letsencrypt.org/directory"
}