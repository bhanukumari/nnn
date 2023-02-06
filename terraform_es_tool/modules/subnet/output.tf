output "pub_subnet_id" {
    value = aws_subnet.subnet_public.id
}

output "pri_subnet_id" {
    value = aws_subnet.subnet_private[*].id
}