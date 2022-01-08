variable "PROJECT_ID" {
  type        = string
  description = "gcp project id"
}

variable "IP_ADDR" {
  type        = string
  description = "instance ip addr"
}

variable "SSH_USER" {
  type        = string
  description = "ssh user"
}

variable "SSH_PUB_KEY" {
  type        = string
  description = "ssh pub key"
}

variable "firewall_enable_logging" {
  type        = string
  description = "firewall_enable_logging"
  default     = true
}

locals {
  region = "us-west1"
  zone   = "us-west1-b"
  image  = "image-1"
}