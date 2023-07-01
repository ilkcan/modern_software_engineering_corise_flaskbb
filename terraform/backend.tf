terraform {
  backend "s3" {
    # CoRise TODO: replace with the bucket name you created
    bucket = "terraform-state-flaskbb-ilkcan"
    key    = "core/terraform.tfstate"
    # CoRise TODO: replace with the region you are using
    region = "eu-north-1"
  }
}