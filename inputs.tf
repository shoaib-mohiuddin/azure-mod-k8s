variable "rg_name" {
  type = string
  description = "Resource group name"
}

variable "vm_size" {
  type = string
  description = "VM size to be used in the cluster"
}

variable "agent_count" {
  type = number
  description = "Number of nodes in the cluster"
  default = 2
}

# The following two variable declarations are placeholder references.
# Set the values for these variable in terraform.tfvars
variable "aks_service_principal_app_id" {
  type = string
  default = " ARM_CLIENT_ID "
}

variable "aks_service_principal_client_secret" {
  type = string
  default = " ARM_CLIENT_SECRET "
}

variable "cluster_name" {
  type = string
  description = "Name of the cluster"
  default = "k8stest"
}

variable "dns_prefix" {
  type = string
  description = "Prefix to be used in the DNS address"
  default = "k8stest"
}

# Refer to https://azure.microsoft.com/global-infrastructure/services/?products=monitor for available Log Analytics regions.
variable "location" {
  type = string
  description = "Location for the deployment of resources"
}

variable "log_analytics_workspace_name" {
  type = string
  default = "LogAnalyticsWorkspace"
}

# Refer to https://azure.microsoft.com/pricing/details/monitor/ for Log Analytics pricing
variable "log_analytics_workspace_sku" {
  type = string
  default = "PerGB2018"
}

variable "ssh_public_key" {
  type = string
  description = "SSH public key of the node"
  default = "~/.ssh/id_rsa.pub"
}

variable "tags" {
  type = map(string)
  description = "Maps the tags for the resources"
}