
output "ALB_DNS_Name" {
  value = aws_lb.ELB.dns_name
}

output "instance_id" {
  value       = aws_instance.default.*.id
  description = "The instance ID."
}

output "az" {
  value       = aws_instance.default.*.availability_zone
  description = "The availability zone of the instance."
}

output "subnet_id" {
  value       = aws_instance.default.*.subnet_id
  sensitive   = true
  description = "The EC2 subnet ID."
}

output "instance_count" {
  value       = var.instance_count
  description = "The count of instances."
}


