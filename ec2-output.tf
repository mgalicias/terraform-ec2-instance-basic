output "public_ip" {
    description = "Public IP address"
    value = aws_instance.ec2_instance.public_ip
}

output "public_dns" {
  description = "Public DNS"
  value = aws_instance.ec2_instance.public_dns
}