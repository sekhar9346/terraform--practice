variable "ami" {
  type    = string
  default = "ami-0614680123427b75e"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandboxes" {
  type    = list(string)
  default = ["sekhar", "nara","rishi","upendra"]
}