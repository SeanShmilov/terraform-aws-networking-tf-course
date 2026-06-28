# Networking Module

This module manages the creation of VPCs and subnets, allowing for the creation
of both private and public subnets.

## Example Usage

```hcl
module "vpc" {
  source = "./modules/networking"

  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "your-vpc"
  }

  subnet_config = {
    public_subnet = {
      cidr_block = "10.0.0.0/24"
      az         = "eu-west-1a"
      public     = true
    }
  }
}
```
