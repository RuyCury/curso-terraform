resource "aws_security_group" "acesso-ssh" {
    name        = "acesso-ssh"
    description = "acesso-ssh"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = var.cdirs_acesso_remoto
    }

    tags = {
        Name    = "ssh"
    }
}

resource "aws_security_group" "acesso-ohio" {
    provider    = aws.us-east-2
    name        = "acesso-ohio"
    description = "acesso-ohio"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = var.cdirs_acesso_remoto
    }

    tags = {
        Name    = "ssh"
    }
}
