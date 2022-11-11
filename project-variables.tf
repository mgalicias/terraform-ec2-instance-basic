variable "region_ohio" {
  description = "Ohio region"
  type = string
  default = "us-east-2"
}
variable "t2_micro" {
  description = "T2 Micro"
  type = string
  default = "t2.micro"
}

variable "keypair" {
  description = "Key Name"
  type = string
  default = "terraform-key"
}

variable "ssh_port" {
    description = "SSH Port"
    type = string
    default = 22  
}

variable "http_port" {
  description = "HTTP Port"
  type = string
  default = 80
}

variable "https_port" {
  description = "HTTPS Port"
  type = string
  default = 443
}

variable "instance_type_list" {
  description = "EC2 instance type list"
  type = list(string)
  default = [ "t3.micro","t3.small","t3.large" ]
}

variable "instance_type_map" {
    description = "EC2 instance type map"
    type = map(string)
    default = {
      "dev" = "t3.micro"
      "qa" = "t3.small"
      "prod" = "t3.large"
    }
  
}