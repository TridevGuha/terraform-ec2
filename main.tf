provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

resource "aws_instance" "demo_ec2_instance" {
  ami = "${var.ami_id}"
  count = "${var.number_of_instances}"
  security_groups = "${var.security_groups}"
  subnet_id = "${var.subnet_id}"
  instance_type = "${var.instance_type}"
  key_name =  "${var.ami_key_pair_name}"
  
  user_data = "${file("init.sh")}"

  tags = {
    Name = "${var.instance_name}"
    Team = "Developers"
  }
}

