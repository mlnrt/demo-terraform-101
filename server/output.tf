output "private_ip" {
  value = aws_instance.web.*.private_ip
}
output "private_dns" {
  value = aws_instance.web.*.private_dns
}
output "public_ip" {
  value = aws_instance.web.*.public_ip
}
output "tags" {
  value = aws_instance.web.*.tags
}