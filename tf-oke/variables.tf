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
  default = "ca-toronto-1"
}

## OKE Cluster
variable "cluster_pod_network_options" {
  type = string
  default = "OCI_VCN_IP_NATIVE"
}
variable "compartment_id" {
  type = string
}
variable "is_public_ip_enabled" {
  type = bool
  default = true
}
variable "endpoint_config_subnet_id" {
  type = string
}
variable "kubernetes_version" {
  type = string
  default = "v1.27.2"
}
variable "cluster_name" {
  type = string
}
variable "kubernetes_network_config_cider" {
  type = string
  default = "10.96.0.0/16"
}
variable "service_lb_subnet_ids" {
  type = string
}
variable "cluster_type" {
  type = string
  default = "BASIC_CLUSTER"
}
variable "vcn_id" {
  type = string
}

## Node Pool
variable "nodepool_name" {
  type = string
}
variable "max_pods_per_node" {
  type = number
  default ="31"
}
variable "pod_subnet_ids" {
  type = string
}
variable "availability_domain" {
  type = string
  default = "TGjA:CA-TORONTO-1-AD-1"
}
variable "node_subnet_id" {
  type = string
}
variable "node_count" {
  type = number
}
variable "eviction_grace_duration" {
  type = string
  default = "PT60M"
}
variable "is_force_delete_after_grace_duration" {
  type = bool
  default = false
}
variable "node_shape" {
  type = string
  default = "VM.Standard.E4.Flex"
}
variable "memory_in_gbs" {
  type = number
  default = 16
}
variable "ocpus" {
  type = number
  default = 1
}
variable "image_id" {
  type = string
  default = "ocid1.image.oc1.ca-toronto-1.aaaaaaaaihukvlwwkkf4oklbg7mwxhxxe3nng5llyvckzk3lz6r2f4rlrf5a"
}
variable "source_type" {
  type = string
  default = "IMAGE"
}