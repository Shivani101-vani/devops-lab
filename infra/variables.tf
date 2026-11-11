variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "location" {
  type    = string
  default = "centralindia"
}

variable "project" {
  type    = string
  default = "dockerlab"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "vm_size" {
  type    = string
  default = "Standard_B1s"
}

variable "admin_username" {
  type    = string
  default = "azureuser"
}

variable "ssh_public_key_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "app_image" {
  type        = string
  description = "Docker image to run"
  default     = "nginx:alpine"
}

variable "container_port" {
  type        = number
  description = "Port the app listens on inside the container"
  default     = 80
}
