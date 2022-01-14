resource "aws_instance" "web" {
  ami           = var.image
  instance_type = var.hardware

  tags = {
    Name = var.name
    Env = upper("production")
    Owner = "gagandeep"
    Dept = "Eng"
  }
}
