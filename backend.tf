# --- root/backend.tf ---

terraform {
  backend "s3" {
    bucket = "grvbkt-tf-jenkins-9june"
    key    = "remote.tfstate"
    region = "us-east-1"
  }
}
