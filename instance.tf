
#How to launch multple EC2 instance by using terraform
#anvesh@Anvesh:~/opt/terraform$ cat instance.tf
provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}
#resource "aws_key_pair" "k8s-demo2" {
 # key_name   = "k8s-demo2"
 # public_key = "${file("k8s-demo1.pem")}"
#}
resource "aws_instance" "master-instance" {
  count         = "${var.instance_count}"
  ami           = "${lookup(var.ami, var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name      = "k8s-demo1"
  #key_name = "${aws_key_pair.k8s-demo2.key_name}"
  tags = {
    Name = "${element(var.instance_tags, count.index)}"
  }
}
anvesh@Anvesh:~/opt/terraform$
