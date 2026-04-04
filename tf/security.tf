
provider "aws" {
   
    region = "us-east-1"

}

provider  should be mention for one time in terraform directory 
and also aws instance nmae should be different


resource  "aws_instance" "webserver" {
    ami = "ami-0c421724a94bba6d6"
    instance_type =  "t3.micro"
    key_name = "sample"
    disable_api_termination = false 
    vpc_security_group_ids = ["sg-04de84b819df706c9" , aws_security_group.ws-sg.id]
    tags ={
        name = "Webserver"
    }
}

resource "aws_security_group" "ws-sg" {
 
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
   ingress {
    from_port        = 8080
    to_port          = 8080
    protocol         = "TCP"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
