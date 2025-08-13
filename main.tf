terraform {
  required_version = ">= 1.0"

  backend "gcs" {
    bucket  = "raw_zone_mongodb"
    prefix  = "terraform/state"
  }
}

resource "local_file" "hello" {
  content  = "Hello from Terraform! This is CI/CD test."
  filename = "hello.txt"
}
