provider "vsphere" {
  user           = "anthony@vsphere.local"
  password       = "H4sh!corp"
  vsphere_server = "ah-vcsa.hashicorp-success.com"
  allow_unverified_ssl = true
} 

module "virtual-machine_example_clone_linux_static" {
  source               = "vancluever/virtual-machine/vsphere//examples/clone_linux_static"
  version              = "1.0.1"

  datacenter           = "Datacenter"
  datastore            = "datastore1"
  dns_servers          = ["147.75.207.207","147.75.207.208"]
  domain_name          = "ah-vcsa.hashicorp-success.com"
  ipv4_address_start   = "1"
  ipv4_gateway         = "147.75.109.17"
  ipv4_network_address = "147.75.109.20/29"
  linked_clone         = "false"
  network              = "VM Network"
  resource_pool        = "default-pool"
  template_name        = "ubuntu"
  vm_count             = "1"
  vm_name_prefix       = "test"
}
