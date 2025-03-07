terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucketab17"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
