terraform {
  backend "s3" {
    bucket = "meka-tf-state-bucket"
    key    = "terramesh/terraform.tfstate"
    region = "us-east-1"

  }
}

