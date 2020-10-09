#anvesh@Anvesh:~/opt/terraform$ cat vars.tf
variable "ami" {
  type = "map"
  default = {
    "us-east-2" = "ami-07efac79022b86107"
  }
}

variable "instance_count" {
  default = "3"
}

variable "instance_tags" {
  type    = "list"
  default = ["K8MASTER", "K8NODE-1", "K8NODE-2"]
}

variable "instance_type" {
  default = "t2.medium"
}

variable "aws_region" {
  default = "us-east-2"
}
