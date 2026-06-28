module "vpc" {
  source = "../../"

  vpc_config = {
    cidr_block = "10.0.0.0/16"
    name       = "your-vpc"
  }

  subnet_config = {
    # Public subnets are indicated by setting the public option to true.
    public_subnet = {
      cidr_block = "10.0.0.0/24"
      az         = "eu-west-1a"
      public     = true
    }
    private_subnet = {
      cidr_block = "10.0.128.0/24"
      az         = "eu-west-1b"
    }
  }
}
