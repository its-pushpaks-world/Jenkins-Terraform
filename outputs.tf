output "aws_security_group" {
  value = aws_security_group.sg.id
}

output "server_private_ip" {
  value = aws_instance.test.private_ip
}

output "server_public_ipv4" {
  value = aws_instance.test.public_ip
}

output "server_id" {
  value = aws_instance.test.id
}

output "key_pair" {
  value = aws_key_pair.key_pair.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.internet-gateway.id
}

output "aws_route_table_id" {
  value = aws_route_table.public-route-table.id
}

output "private_subnet_id" {
  value = aws_subnet.private-subnet-1.id
}

output "public_subnet_id" {
  value = aws_subnet.public-subnet-1.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}