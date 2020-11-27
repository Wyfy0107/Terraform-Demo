resource "aws_instance" "demo" {
  ami = data.aws_ami.ubuntu-18_04.id
  instance_type = "t2.micro"

  tags = {
      name = "demo_servnamoer"
      project = var.project
      environment = var.environment
  }
}

output "server_ip" {
    description = "Server public ip"
    value = aws_instance.demo.public_ip
}