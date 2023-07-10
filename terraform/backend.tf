terraform {
  backend "s3" {
    bucket = "terraform-state-flaskbb-ilkcan" 
    key    = "core/terraform.tfstate"
    region = "eu-north-1"
  }
}