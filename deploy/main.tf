terraform {
  backend "s3" {
    bucket         = "recipe-app-iac-tfstate"
    key            = "recipe-app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "recipe-app-api-tf-state-lock"
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~> 4.0"
}
