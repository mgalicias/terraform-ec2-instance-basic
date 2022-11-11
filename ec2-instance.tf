resource "aws_instance" "ec2_instance" {
    instance_type = var.t2_micro
    ami = data.aws_ami.ec2_ami.id
    user_data = file("${path.module}/http-install.sh")
    vpc_security_group_ids = [ aws_security_group.ec2_ssh.id,
                               aws_security_group.ec2_web.id ]          
    key_name = "terraform-key"                
    tags = {
      "Name" = "EC2 demo"
    }
}