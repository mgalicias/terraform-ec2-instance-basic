resource "aws_instance" "ec2_instance" {
    #instance_type = var.t2_micro
    instance_type = var.instance_type_list[0] # For list
    #instance_type = var.instance_type_map["prod"] #This is for mapping 

    ami = data.aws_ami.ec2_ami.id
    user_data = file("${path.module}/http-install.sh")
    vpc_security_group_ids = [ aws_security_group.ec2_ssh.id,
                               aws_security_group.ec2_web.id ]          
    key_name = "terraform-key"                
    count = 5 # Create 
    tags = {
      "Name" = "master-bot-${count.index}"
    }
}