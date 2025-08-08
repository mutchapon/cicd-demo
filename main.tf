terraform {
  required_version = ">= 1.0"
}

resource "local_file" "hello" {
  content  = "Hello from Terraform! This is CI/CD test."
  filename = "hello.txt"
}
