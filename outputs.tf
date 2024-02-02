output "vpcid" {
    value=aws_vpc.myvpc.id
}

output "subnets" {
    value = aws_subnet.subnets 
}

output "countofsubnets" {
    value = length(aws_subnet.subnets)
}
