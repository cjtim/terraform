variable "PROJECT_ID" {
  type        = string
  description = "gcp project id"
}

variable "IP_ADDR" {
  type        = string
  description = "instance ip addr"
}

locals {
  region = "us-west1"
  zone   = "us-west1-b"
  image  = "image-1"
}