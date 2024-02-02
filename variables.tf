variable "var_region" {
    type = string
    default = "ap-south-1"
}

variable "vpcrange" {
    type = string
    default = "10.10.0.0/16"
}


#variable "subnet_cidrs" {
#    type = list(string)
#}

variable "subnet_name_tags" {
    type = list(string)
  
}

variable "subnet_azs" {
    type = list(string)
  
}

variable "vpctag" {
    type = string
    default = "ntier" 
}