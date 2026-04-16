output "public_ip" {
    value = aws_lightsail_instance.test.public_ip_address
}

output "private_ip" {
    value = aws_lightsail_instance.test.private_ip_address
  
}