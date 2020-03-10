variable "location" {}

variable "tags" {
    type = "map"

    default = {
        Environment = "Terraform Dev"
        Dept = "Engineering"
  }
}

# variable "admin_username" {
#     type = "string"
#     description = "Administrator user name for virtual machine"
# }

# variable "admin_password" {
#     type = "string"
#     description = "Password must meet Azure complexity requirements"
# }

# variable "prefix" {
#     type = "string"
#     default = "my"
# }

# variable "sku" {
#     default = {
#         westus = "16.04-LTS"
#         eastus = "18.04-LTS"
#     }
# }