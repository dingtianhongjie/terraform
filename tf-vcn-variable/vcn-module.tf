module "vcn" {
  source  = "oracle-terraform-modules/vcn/oci"
  version = "3.5.5"
  # insert the 1 required variable here

  compartment_id = var.compartment_id

  # Optional Inputs
  create_internet_gateway = var.create_internet_gateway
  create_nat_gateway = var.create_nat_gateway
  create_service_gateway = var.create_service_gateway
  region = var.region
  vcn_name = var.vcn_name
}