# Example for loop in output
output "ids2" {
  value = {
    for id, attributes in data.aws_subnet.vpcsubnet : id => attributes if attributes.available_ip_address_count > 20
  }
}