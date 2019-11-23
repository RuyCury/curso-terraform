variable "amis" {
    type = map(string)

    default = {
        us-east-1 = "ami-04b9e92b5572fa0d1"
        us-east-2 = "ami-00bf61217e296b409"
    }
  
}

variable "cdirs_acesso_remoto" {
    type = list(string)

    default = ["177.33.139.31/32","187.33.139.31/32"]
  
}

variable "key_name" {
    default = "terraform-aws"
  
}

variable "instance_type" {
    default = "t2.micro"
  
}
