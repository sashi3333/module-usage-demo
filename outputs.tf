output "vpcid" {
    value=aws_vpc.ntiervpc.id
}

output "subnets" {
    value = aws_subnet.subnets 
}

output "countofsubnets" {
    value = length(aws_subnet.subnets)
}

output "tags" {
    value = aws_vpc.ntiervpc.tags
  
}