# Example for loop in output
# https://stackoverflow.com/questions/69498813/how-to-filter-aws-subnets-in-terraform
output "ids2" {
  value = {
    for id, attributes in data.aws_subnet.vpcsubnet : id => attributes if attributes.available_ip_address_count > 20
  }
}