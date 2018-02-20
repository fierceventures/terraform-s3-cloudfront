variable "name" {
  description = "The name prefix for the resources"
}

variable "env" {
  description = "The environment"
}

variable "aliases" {
  type = "list"
  default = []
}
