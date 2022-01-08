variable "PROJECT_ID" {
  type        = string
  description = "gcp project id"
}

variable "zone" {
  type        = string
  description = "project zone"
  default     = "us-west1-b"
}

variable "region" {
  type        = string
  description = "project region"
  default     = "us-west1"
}

variable "image" {
  type        = string
  description = "Computer engine image"
  default     = "image-1"
}

variable "IP_ADDR" {
  type        = string
  description = "instance ip addr"
  default     = ""
}

variable "SSH_USER" {
  type        = string
  description = "ssh user"
  default     = ""
}

variable "SSH_PUB_KEY" {
  type        = string
  description = "ssh pub key"
  default     = ""
}

variable "firewall_enable_logging" {
  type        = bool
  description = "firewall_enable_logging"
  default     = true
}
