resource "aws_instance" "ec2_instance-demo" {
  ami = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  key_name = aws_key_pair.demo_keypair.key_name
  tags = {
    Name = "${var.instance_name}-${var.environment}"
  }
}

resource "aws_key_pair" "demo_keypair" {
  key_name = var.ami_key_pair_name
  public_key = sensitive(var.public_key)
}

resource "aws_s3_bucket" "this" {
  bucket = var.instance_name
}