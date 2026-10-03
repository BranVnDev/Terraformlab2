variable "project_name" {
  description = "The name of the project."
  type        = string

  validation {
    condition     = length(var.project_name) >= 5 && length(var.project_name) <= 20
    error_message = "The project name must be between 5 and 20 characters."
  }
}

variable "environment" {
  description = "The environment for the deployment (e.g., dev, qa, prod)."
  type        = string

  validation {
    condition     = contains(["dev", "qa", "prod"], var.environment)
    error_message = "The environment must be one of: dev, qa, prod."
  }
}

variable "location" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "mexicocentral"
}

variable "vnet_location" {
  description = "Azure region allowed for the virtual network by the subscription policy."
  type        = string
  default     = "eastus"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "A map of tags to assign to resources."
  type        = map(string)
  default     = {}
}

variable "subscription_id" {
  description = "The Azure Subscription ID."
  type        = string
  sensitive   = true
}