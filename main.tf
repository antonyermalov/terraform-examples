# Define provider and authentication credentials
provider "aws" {
  access_key = "<your-access-key>"
  secret_access_key = "<your-secret-access-key>"
  region = "us-west-2"  # Replace with your desired AWS region
}

# Create an EC2 instance
resource "aws_instance" "gentoo_instance" {
  ami = "ami-0123456789"  # Replace with the appropriate Gentoo Linux AMI ID for your region
  instance_type = "t2.micro"  # Replace with your desired instance type
  key_name = "my-key-pair"  # Replace with your EC2 key pair name
  security_group_names = ["default"]  # Replace with your desired security group(s)

  tags = {
    Name = "gentoo-instance"
  }
}
