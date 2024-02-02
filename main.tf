resource "aws_vpc" "myvpc" {
    cidr_block = var.vpcrange
}

resource "aws_vpc" "ntiervpc" {
    cidr_block = var.vpcrange
    tags = {
        Name = "ntier"
    }      
}

resource "aws_subnet" "subnets" {
    vpc_id=aws_vpc.ntiervpc.id
    count = length(var.subnet_azs)
    #cidr_block = var.subnet_cidrs[count.index]
    cidr_block = cidrsubnet(var.vpcrange,8,count.index)
    tags = {
        "Name" = var.subnet_name_tags[count.index]
    }
    availability_zone = var.subnet_azs[count.index]
    depends_on = [ 
        aws_vpc.myvpc ]
}
