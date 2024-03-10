

# variable for dynamodb

variable "name" {
    description = "name of the dynamodb table"
    type = string
}

variable "hash-key-name" {
    type = string
}

variable "hash-key-type" {
    type = string
}
