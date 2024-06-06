provider "aws" {
  access_key = "AKIAW3MEEYZR5WOCHPXT"
  secret_key = "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"
  region     = "us-east-1"
}

terraform {
  required_version = "<= 2.0.0" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source  = "hashicorp/aws"
    }
  }
}