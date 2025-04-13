variable "local_user_pwd" {
  description = "Local user with sudo privileges password. Only needed if the user account requires a password for sudo commands."
  type        = string
  default     = ""
}

variable "libvirt_pool_path" {
  description = "local path for libvirt storage pool"
  type        = string
  default     = "/var/lib/libvirt/images/terraform"
}

variable "ubuntu_img_url" {
  description = "linux url for qcow2 image"
  type        = string
  default     = ""
}

variable "hostname" {
  description = "vm hostname"
  type        = string
  default     = "ubuntu"
}

variable "packages" {
  description = "linux packages to install, qemu-guest-agent needed for terraform"
  type        = list(any)
  default     = ["qemu-guest-agent"]
}

variable "cpus" {
  description = "cpus allocated to vm"
  type        = string
  default     = "1"
}

variable "memory" {
  description = "memory allocated to vm"
  type        = string
  default     = "1024"
}

variable "root_pwd" {
  description = "vm root password"
  type        = string
}

variable "username" {
  description = "vm user"
  type        = string
  default     = "ubuntu"
}

variable "ssh_public_key" {
  description = "ssh public key for local user"
  type        = string
  default     = ""
}

variable "dhcp" {
  description = "use dhcp for network"
  type        = string
  default     = "true"
}

variable "network" {
  description = "kvm network"
  type        = string
  default     = "default"
}

variable "ip_address" {
  description = "static ip address for vm"
  type        = string
  default     = ""
}

variable "subnet" {
  description = "subnet mask (cidr)"
  type        = string
  default     = ""
}

variable "gateway" {
  description = "default gateway ip address"
  type        = string
  default     = ""
}

variable "nameservers" {
  description = "list of dns servers"
  type        = list(any)
  default     = []
}
