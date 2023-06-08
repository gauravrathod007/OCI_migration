provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVP3JXD3FUFLIZMPH"                              #AKIAVP3JXD3FUFLIZMPH
  secret_key = "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"          #2+NHsKCDyGvHDOLefjYHsDzfsw+nESHFvu2N8irT
}

resource "aws_instance" "gaurav" {
  ami                     = "ami-0715c1897453cabd1"
  instance_type           = "t2.micro"
}
