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
variable "address_prefixes" {
  type    = string
  default ="10.0.2.0/24"
}
variable "address_space" {
  type    = string
  default = "10.0.0.0/16"
}
