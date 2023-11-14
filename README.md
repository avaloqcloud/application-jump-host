This module is for creating bastion resource in OCI

## Table of contents

* [Requirements](#requirements)
* [Providers](#providers)
* [Usage](#usage)
* [Inputs](#inputs)

  
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.39 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.18.0 |


## Providers
File `provider.tf` content example:

```hcl
terraform {
  required_version = "~> 1.2"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.39"
    }
    oci = {
      source  = "oracle/oci"
      version = "5.18.0"
    }
  }
}
```


## Usage

    module "terraform-oci-compute" {
        source = "github.com/avaloqcloud/application-jump-host"
    }

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bastion"></a> [bastion](#module\_bastion) | github.com/avaloqcloud/terraform-oci-compute | v0.1.0 |



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_public_ip"></a> [assign\_public\_ip](#input\_assign\_public\_ip) | Assign public IP to the instance | `string` | `true` | no |
| <a name="input_availability_domain"></a> [availability\_domain](#input\_availability\_domain) | Availability Domain | `string` | n/a | yes |
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | Compartment OCID | `string` | n/a | yes |
| <a name="input_display_name"></a> [display\_name](#input\_display\_name) | Name of the ACP instance | `string` | n/a | yes |
| <a name="input_instance_config"></a> [instance\_config](#input\_instance\_config) | n/a | <pre>object({<br>    ocpus = string<br>    memory_in_gbs = string<br>    boot_volume_size_in_gbs = string<br>  })</pre> | <pre>{<br>  "boot_volume_size_in_gbs": "500",<br>  "memory_in_gbs": "48",<br>  "ocpus": "6"<br>}</pre> | no |
| <a name="input_instance_image"></a> [instance\_image](#input\_instance\_image) | n/a | `string` | n/a | yes |
| <a name="input_instance_shape"></a> [instance\_shape](#input\_instance\_shape) | n/a | `string` | n/a | yes |
| <a name="input_private_subnet_id"></a> [private\_subnet\_id](#input\_private\_subnet\_id) | OCID of private subnet in which to create a instance | `string` | n/a | yes |
| <a name="input_ssh_authorized_key"></a> [ssh\_authorized\_key](#input\_ssh\_authorized\_key) | RSA public key in PEM format. It will added as authorized key for remote connection over SSH | `string` | n/a | yes |
