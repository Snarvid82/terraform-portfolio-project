terraform {
    backend "s3" {
        bucket = "av-my-terraform-state"
        key = "global/s3/terraform.tfstate"
        region = "eu-north-1"
        dynamodb_table = "terraform-lock-file"
    }
}