variable "PROJECT_ID" {
  type        = string
  description = "gcp project id"
}

variable "IP_ADDR" {
  type        = string
  description = "instance ip addr"
  default     = null
}

variable "add_ssh_key" {
  type        = bool
  description = "add ssh key"
  default     = true
}

variable "SSH_USER" {
  type        = string
  description = "ssh user"
  default     = null
}

variable "SSH_PUB_KEY" {
  type        = string
  description = "ssh pub key"
  default     = null
}

variable "firewall_enable_logging" {
  type        = bool
  description = "firewall_enable_logging"
  default     = true
}

locals {
  region = "us-west1"
  zone   = "us-west1-b"
  image  = "image-1"
}