# provider "oci" {}

resource "oci_containerengine_cluster" "generated_oci_containerengine_cluster" {
	cluster_pod_network_options {
		cni_type = var.cluster_pod_network_options
	}
	compartment_id = var.compartment_id
	endpoint_config {
		is_public_ip_enabled = var.is_public_ip_enabled
		subnet_id = var.endpoint_config_subnet_id
	}
	kubernetes_version = var.kubernetes_version
	name = var.cluster_name
	options {
		kubernetes_network_config {
			services_cidr = var.kubernetes_network_config_cider
		}
		persistent_volume_config {
		}
		service_lb_config {
		}
		service_lb_subnet_ids = [var.service_lb_subnet_ids]
	}
	type = var.cluster_type
	vcn_id = var.vcn_id
}

resource "oci_containerengine_node_pool" "create_node_pool_details0" {
	cluster_id = "${oci_containerengine_cluster.generated_oci_containerengine_cluster.id}"
	compartment_id = var.compartment_id
	initial_node_labels {
		key = "name"
		value = var.nodepool_name
	}
	kubernetes_version = var.kubernetes_version
	name = var.nodepool_name
	node_config_details {
		node_pool_pod_network_option_details {
			cni_type = var.cluster_pod_network_options
			max_pods_per_node = var.max_pods_per_node
			pod_subnet_ids = [var.pod_subnet_ids]
		}
		placement_configs {
			availability_domain = var.availability_domain
			subnet_id = var.node_subnet_id
		}
		size = var.node_count
	}
	node_eviction_node_pool_settings {
		eviction_grace_duration = var.eviction_grace_duration
		is_force_delete_after_grace_duration = var.is_force_delete_after_grace_duration
	}
	node_shape = var.node_shape
	node_shape_config {
		memory_in_gbs = var.memory_in_gbs
		ocpus = var.ocpus
	}
	node_source_details {
		image_id = var.image_id
		source_type = var.source_type
	}
}
