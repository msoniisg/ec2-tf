output "server_public_ip" {
  value = aws_eip.web-eip.public_ip
}

output "server_privet_ip" {
  value = aws_instance.web-server-instance.private_ip
}

output "server_id" {
  value = aws_instance.web-server-instance.id
}

resource "local_file" "public_key_pem" {
  content  = module.key_pair.public_key_pem
  filename = "public_key.pub"
}