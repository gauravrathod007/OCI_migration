terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVP3JXD3FUFLIZMPH"                              #AKIAVP3JXD3FUFLIZMPH
  secret_key = "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"          #2+NHsKCDyGvHDOLefjYHsDzfsw+nESHFvu2N8irT
}
