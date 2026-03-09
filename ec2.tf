resource "aws_instance" "webserver" {
  ami = var.amid
  instance_type = var.machinetype
  vpc_security_group_ids = [aws_security_group.global-sg-2027.id]
  key_name = var.keyname

  tags = {
    Name = var.mytag
  }

}