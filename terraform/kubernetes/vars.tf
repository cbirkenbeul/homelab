#Set your public SSH key here
variable "ssh_key" {
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB872AyWt/e+f74ddtVdrbQeNTl7f+EcCtvipw3YWzVP mail@teqqy.de"
}
#Establish which Proxmox host you'd like to spin a VM up on
variable "proxmox_host" {
    default = "pve01"
}
#Specify which template name you'd like to use
variable "template_name" {
    default = "ubuntu-cloud"
}
#Establish which nic you would like to utilize
variable "nic_name" {
    default = "vmbr0"
}
#Provide the url of the host you would like the API to communicate on.
#It is safe to default to setting this as the URL for what you used
#as your `proxmox_host`, although they can be different
variable "api_url" {
    default = "https://pve01.casalani.de:8006/api2/json"
}
#Blank var for use by terraform.tfvars
variable "token_secret" {
}
#Blank var for use by terraform.tfvars
variable "token_id" {
}