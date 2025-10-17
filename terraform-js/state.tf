terraform {
    backend "s3" {
        bucket = "av-my-tf-website-state"
        key = "global/s3/terraform.tfstate"
        region = "eu-north-1"
        dynamodb_table = "my-db-website-table"
    }
}