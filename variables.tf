variable "project_name" {
  description = "Nombre del proyecto o aplicación"
  type        = string
}

variable "environment" {
  description = "Entorno donde se desplegarán los recursos (dev, test, prod)"
  type        = string
}

variable "location" {
  description = "Región de Azure donde se desplegarán los recursos"
  type        = string
  default     = "mexicocentral"
}

variable "vnet_location" {
  description = "Región de Azure permitida para la Virtual Network"
  type        = string
  default     = "eastus"
}

variable "vnet_address_space" {
  description = "Espacio de direcciones CIDR asignado a la Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "tags" {
  description = "Etiquetas para los recursos de Azure"
  type        = map(string)
  default     = {}
}