# Automate your ssh-IT

GitHub Repository: [lab-terraform-ubuntu-test](https://github.com/naturalblaze/lab-terraform-ubuntu-test)

Author: Blaze Bryant [naturalblaze](https://github.com/naturalblaze)


## Description

This repo has the code for deploying an Ubuntu test VM using Terraform into the KVM/QEMU/Libvirt lab server that was setup via [lab-setup-ubuntu-kvm](https://github.com/naturalblaze/lab-setup-ubuntu-kvm).


## Terraform VM Deployment 

- Edit the variables `terraform.tfvars.example` file

| Name | Required | Default | Description |
| ---- | -------- | ------- | ----------- |
| local_user_pwd | 🚫 | None | Local user with sudo privileges password. Only needed if the user account requires a password for `sudo` commands. |
| libvirt_pool_path | 🚫 | /var/lib/libvirt/images/terraform | Local path for the Libvirt storage pool to be created. |
| ubuntu_img_url | 🚫 | None | Linux URL for QCOW2 image. |
| hostname | 🚫 | ubuntu | VM hostname. |
| packages | 🚫 | qemu-guest-agent | Linux packages to install during the cloud-init configuration, `qemu-guest-agent` needed for Terraform to validate the install. |
| cpus | 🚫 | 1 | CPUs allocated to VM. |
| memory | 🚫 | 1024 | Memory allocated to VM. |
| root_pwd | ✅ | None | VM root password. |
| username | 🚫 | ubuntu | VM user. |
| ssh_public_key | ✅ | None | Path to SSH Public key for user. |
| dhcp | 🚫 | True | Use DHCP for VM network config. |
| network | 🚫 | default | KVM network to use for VM network interface. |
| ip_address | 🚫 | None | Static IP address for VM. Only needed if DHCP is set to False. |
| subnet | 🚫 | None | CIDR Subnet mask for VM. Only needed if DHCP is set to False. |
| gateway | 🚫 | None | Default gateway IP address. Only needed if DHCP is set to False. |
| nameservers | 🚫 | None | List of DNS nameservers. Only needed if DHCP is set to False. |

- Chage to Terraform workspace directory

```bash
cd ~/tf-workspaces/lab-terraform-ubuntu-test
```

- Rename `terraform.tfvars.example` file to `terraform.tfvars`

```bash
mv terraform.tfvars.example terraform.tfvars
```

- Edit `main.tf` file if you want to expand the disk size of the Linux image QCOW2 file during the deployment

> :exclamation: **Note:** This is optional but the default Ubuntu 24.04 disk image is only 3G

- Initialize Terraform workspace

```bash
terraform init
```

- Format Terraform files

```bash
terraform fmt
```

- Validate Terraform configuration

```bash
terraform validate
```

- Plan Terraform deployment

```bash
terraform plan
```

- Deploy Terraform resources

> :exclamation: **Note:** Use argument `--auto-approve` to bypass prompt for deployment

```bash
terraform apply
```

- Destroy Terraform resources

> :exclamation: **Note:** Use argument `--auto-approve` to bypass prompt for deployment

```bash
terraform destroy
```