output "public_ip" {
    description = "Public IP address"
    value = aws_instance.ec2_instance.public_ip
}

output "public_dns" {
  description = "Public DNS"
  value = aws_instance.ec2_instance.public_dns
}

output "for_output_list" {
    description = "For loop with list"    
    value = [for i in aws_instance.ec2_instance: i.public_dns ]
  
}

output "for_output_map" {
    
    description = "For loop with map"
    value = {for i in aws_instance.ec2_instance: i.id => i.public_dns}
}   

output "for_output_advanced" {
    
    description = "For loop with map advanced"
    value = {for i,j in aws_instance.ec2_instance: i => j.public_dns }
}   

output "legacy_splat_public_dns" {
  description = "legacy splat public dns"
  value = aws_instance.ec2_instance.*.public_dns
}

output "latest_splat_public_dns" {
    description = "latest slpat public dns"
    value = aws_instance.ec2_instance[*].public_dns
  
}