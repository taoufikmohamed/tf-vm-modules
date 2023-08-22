variable "rg_Name" {
  type        = string
  default     = ""
  description = "Resource Group to be used for Virtual Machine Deployment"
}
variable "location" {
  type        = string
  default     = ""
  description = "Location of the Azure Virtual Machine"
}
variable "vm_name" {
  type        = string
  default     = ""
  description = "Name of the Virtual Machine to be created."
}
variable "size" {
  type        = string
  default     = ""
  description = "Virtual Machine \"Size\"SKU\" to be created such as : Standard_F2"
}
variable "admin_username" {
  type        = string
  default     = ""
  description = "Username for Azure Virtual Machine"
  sensitive   = true
}
variable "admin_password" {
  type        = string
  default     = ""
  description = "Password for Azure Virtual Machine"
  sensitive   = true
}
variable "nicc" {
  type        = string
  default     = ""
  description = "nic"
}
variable "sub" {
  type        = string
  default     = ""
  description = "subnet"
}
variable "vnet" {
  type        = string
  default     = ""
  description = "vnet"
}
variable "ic" {
  type        = string
  default     = ""
  description = "internal"
}