terraform {
  backend "s3" {
    bucket="ynap-production-ready-serverless-dorog"
    key="terraform.tfstate"
    region="eu-central-1"
  }
}