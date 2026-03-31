#syntax variable "variablename" { default = "value" }


#variable simple data types 
# "storm" , "4"  -> string data type 
# 5 -> number data type 
# true / false - > boolean data type 
# 5.4 -> float 

variable "this_ami" {
  default = "ami-0c3389a4fa5bddaad"
}

variable "this_inst" {
   default =  "t3.micro"
}

variable "this_key" {
    default = "sample"
}

variable "this_api" {
    default = false 
}

variable "this_sg" {
    default = "sg-04de84b819df706c9"
}

variable "this_count" {
    default = 1
}