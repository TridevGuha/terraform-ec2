# https://developer.hashicorp.com/terraform/language/values/variables

variable "access_key" {
  description = "Access key to AWS console"
}
variable "secret_key" {
    description = "Secret key to AWS console"
}

variable "region" {
    description = "The region EC2 instances will be created in"
    default = "us-east-1"
}
variable "instance_name" {
    description = "Name of the instance to be created"
    default = "demo-srv"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "subnet_id" {
    description = "The VPC subnet the instance(s) will use -> us-east-1a"
    default = "subnet-0f6509d7bf223627e"   
}

variable "ami_id" {
    description = "the AMI image to use -> ubuntu 20 lts 64 bit"
    default = "ami-0261755bbcb8c4a84"
}

variable "security_groups" {
    description = "The security group ec2 instance will be placed behind"
    default = ["sg-0fa3b8f0ac270b76f"]
}

variable "number_of_instances" {
  description = "the number of instances to create"
  default = 1
}

variable "ami_key_pair_name" {
    description = "The key pair(.pem file) the ec2 instance is going to use"
    default = "tf"  # warning/error note: DO NOT use .pem/extension
}

