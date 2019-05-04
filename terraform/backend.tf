terraform {
  backend "s3" {
   bucket = "hh4563"
   region = "us-east-2"
   key = "test/ecs/terraform.tfstate"
  }
}
