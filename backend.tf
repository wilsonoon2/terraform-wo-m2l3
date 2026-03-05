terraform {
    backend "s3" {
        bucket = "sctp-c12-wo-tfstate-bucket"
        key    = "sctp-cs6-2/terraform.tfstate"
        region = "ap-southeast-1"
    }
}
