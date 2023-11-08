## provider
variable "tenancy_ocid" {
  type = string
}
variable "user_ocid" {
  type = string
}
variable "private_key_path" {
  type = string
}
variable "fingerprint" {
  type = string
}
variable "region" {
  type = string
}

## vcn-module
variable "compartment_id" {
  type = string
}
variable "create_internet_gateway" {
  type = bool
  default = true
}
variable "create_nat_gateway" {
  type = bool
  default = true
}
variable "create_service_gateway" {
  type = bool
  default = true
}
variable "vcn_name" {
  type = string
}