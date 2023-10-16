module "ec2_instance" {
count = 2
  source = "./module/ec2"
  ami_id = var.ami_id
  subnet_id = var.subnet_id
  instance_type = var.instance_type
  instance_name = "${var.instance_name}-${count.index}"
  public_key = var.public_key
  environment = var.environment
  ami_key_pair_name = "${var.ami_key_pair_name}-${count.index}"
}