module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"
  region                 = "us-east-1"

  name                   = "my-cluster"
  instance_count         = 2

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
