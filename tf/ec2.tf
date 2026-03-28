
provider "aws" {
   
    region = "us-east-1"

}




resource  "aws_instance" "webserver" {
    ami = "ami-0c421724a94bba6d6"
    instance_type =  "t3.micro"
    key_name = "sample"
    disable_api_termination = false 
    vpc_security_group_ids = ["sg-04de84b819df706c9"]
    tags ={
        name = "Webserver"
    }
}