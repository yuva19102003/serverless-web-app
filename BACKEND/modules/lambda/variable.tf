

variable "function-name" {
    description = "name of the lambda function"
    type = string
}

variable "handler" {
    type = string
}

variable "runtime" {
    type = string
}

variable "filename" {
    type = string
}

variable "role" {
    type = string
}