terraform {
    required_version = "~> 1.10.0"

    backend "s3" {
        #from .tfbackend file
        # bucket = "bucket-name"
        # key    = "terraform.tfstate"
        # region = "ap-northeast-1"
        use_lockfile = true
    }
}
   
provider "aws" {
    region = var.region
}

resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
}