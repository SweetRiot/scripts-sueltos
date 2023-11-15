provider "aws" {
  region = "sa-east-1" # Puedes cambiar esto a la región que prefieras
}

resource "aws_instance" "mi_ec2" {
  count         = 20    
  ami           = "ami-05dc908211c15c11d" # Debes usar el AMI adecuado para tu región
  instance_type = "t2.micro" # Este es el tipo de instancia, puedes cambiarlo según tus necesidades

  tags = {
    Name = "Terraform instances ${count.index}"
  }
}
