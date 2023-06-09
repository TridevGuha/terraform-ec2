**docs help:**
https://dev.to/aws-builders/how-to-create-an-ec2-instance-on-aws-using-terraform-4lg
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group

**pre-requisits:**
following s/w(s0) needs to be installed:
1. aws cli 
2. terraform

**port-apply verify:**
$ aws configure  # <-- pass accesskey,secret_key,region,output format
$ terraform state list  # <-- output: aws_instance.demo_ec2_instance[0]
$ terraform state show aws_instance.demo_ec2_instance[0]
$ aws ec2 describe-instances

**debug:**
$ aws ec2 describe-instances --debug > debug-ec2.log

