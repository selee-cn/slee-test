output "region" {
  value = aws_default_subnet.default.sub.availability_zone
}

output "sub-tag" {
  value = aws_default_subnet.defaultsub.tags.name
}

output "ec2-type" {
  value = aws_instance.ec2.instance_type
}

output "ec2-tag" {
  value = aws_instance.ec2.tags.name
}
