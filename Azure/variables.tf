### General Variables

variable "location" {
  description = "The data center location where all resources will be put into."
  default = "us-east-1"
}

variable "resource_group_name" {
  description = "The name of the resource group which the Jenkins test farm will be created in."
  default = "rg"
}


### Network Variables

variable "virtual_network_name" {
  description = "The name of the virtual network connecting all resources."
  default     = "module-test-farm-vnet"
}

variable "subnet_name" {
  description = "The name of the subnet where the Jenkins virtual machine will be put into."
  default     = "jenkins-subnet"
}

variable "public_ip_name" {
  description = "The name of the public IP address for Jenkins virtual machine."
  default     = "jenkins-pip"
}


variable "network_security_group_name" {
  description = "The name of the network security group (firewall rules) for Jenkins virtual machine."
  default     = "ssh-allow"
}

variable "network_interface_name" {
  description = "The name of the primary network interface which will be used by the Jenkins virtual machine."
  default     = "jenkins-nic"
}


### Virtual Machine Variables

variable "virtual_machine_name" {
  description = "The name of the Jenkins virtual machine which contains the Jenkins server."
  default     = "jenkins-vm"
}

variable "virtual_machine_size" {
  description = "The size of the Jenkins virtual machine."
  default     = "Standard_A2_v2"
}

variable "virtual_machine_osdisk_name" {
  description = "The managed OS disk name of the Jenkins virtual machine."
  default     = "jenkins-osdisk"
}

variable "virtual_machine_osdisk_type" {
  description = "The managed OS disk type of the Jenkins virtual machine."
  default     = "Standard_LRS"
}

variable "virtual_machine_computer_name" {
  description = "The computer name of the Jenkins virtual machine."
  default     = "tfmod-jenkins"
}

variable "admin_username" {
  description = "The username of the administrator of the Jenkins virtual machine."
  default = "azureuser"
}

variable "ssh_public_key_data" {
  description = "The SSH public key for remote connection of the Jenkins virtual machine."
  default= "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCQuQzywaqT4SAkdvT1+IIbwg2LY8xI1AZ/MU241RABW1c/5EW/Z739ywIUGx1ynwtQnwo5LNamXPlGhuLjvo+xnu0Paw8QGj4yxTzuzdZ7TVllTxbPSWHG74Nc9svMiAsSuVjP5CaSOKMx8i+5nIA75U3pdgTRoiimLDNWM60b/W1P7hQu+P8UVXa/3G9nr7t0dreob/dyShLFhGFB8Cj76aZL7ZPXeOZPyu/P4RC/kLCY8jyQiVQ4Lf2x1w2H9iBRnKDthBoKKHSIKstv+cuxGaZZmWKrJ9BB0zoEA2nLSEkydwCtSdpI1tG1xw/AJFyP0yoh09rOhmoG2CtiirjR imported-openssh-key"
}

variable "ssh_private_key_data" {
  description = "The SSH private key for remote connection. It is used to configure the environment after the virtual machine is created."
  default= "-----BEGIN RSA PRIVATE KEY-----MIIEogIBAAKCAQEAkLkM8sGqk+EgJHb09fiCG8INi2PMSNQGfzFNuNUQAVtXP+RFv2e9/csCFBsdcp8LUJ8KOSzWplz5Robi476PsZ7tD2sPEBo+MsU87s3We01ZZU8Wz0lhxu+DXPbLzIgLErlYz+QmkjijMfIvuZyAO+VN6XYE0aIopiwzVjOtG/1tT+4ULvj/FFV2v9xvZ6+7dHa3qG/3ckoSxYRhQfAo++mmS+2T13jmT8rvz+EQv5CwmPI8kIlUOC39sdcNh/YgUZyg7YQaCih0iCrLb/nLsRmmWZliqyfQQdM6BANpy0hJMncArUnaSNbRtccPwCRcj9MqIdPazoZqBtgrYoq40QIDAQABAoIBABHfGC8+JS9fxJVcL0HUr1R4MS3+Y/K2ZBr+3qctgG16dxrHuKk7SWX21Mng01EdPMt26E9JLzSaFJpV+9y94oa/pmyZ/uExLG8eljizKIJPefOdwaZVXIKxfxpSy7X1MtDcHJCHjw/NeLGpQ6V7IwbCeU2UKmIs0TI8ERbbCMyE3f05M5HgEOgIEK3Q/mdUy/UtdfLo95ksil4np9khJ18BiTvYjkz7EDs0iAT2k3t8dJkxYg235YYyfdblfhkUc0GfXGjCQVNZAGW3wS46mO9i82iOfXBqHzkzf9OogKF/8U7Ldkk2IAiuydohS/OylqX41S9XD2NeZ5L9T8prRAECgYEA4fJmPGsBbUar7YEDWlSv0hJZC1nPhZkT6SZtG57S1hNIrtZlu1vyDS5gepG19aP1PhSF4+KC9x5tvA3rPFl06CJv5gc23h4aLJuF67oJ4XMq3mCHuPWshNw3SHczZ+El+zvfTZ72sRM90L5Q/rm73i9g5hKlaPqTud/w3duL8ZECgYEAo/jvGNy/JPw50fCx6iORkbMMttQ2ZbJ9QTqQE1lAzKgByRL4nCyn7cclFM/hIrKXDDrIrFgMxwCibQ8k4cU/MTkOXLHlyzqWn8auNWcuCR2Tl38I7rvKUsnkaYa6jTkaBeGw4EzpgFzDmHTIl68N62U9PsVwV+A6VkWvcnt6s0ECgYAZ0Nhdjtxa3/hE6ri3WXW9StthsKFFYngj64AL59mvHATx9Q0qmxbM6r+bQYrIxjL/JNkncHoGQjPHiM+X1aDF5Slj3u8l8cqLzjk+9cKrP71mKyFWwLs1cvPeE8CL3e25Bt48wCzvjoNBln0qnY4ZlNA9eWPs2rSGSE/9CVi0AQKBgEa0vUVXSwVDzhr9U3rHQ6o0LzNXZu2Lff92pVHylsKpX7u49oNBrlgWG6NR0J8Jq6CWaJoIjdnyKBgnA5xnVcx/8fV+sLxl0zWqksxsZamAm3gkS1HGoIP6kwf+FMt46APJQmA2SioT1jQTh7wAvFvZGAPNV5hNFFrHSdRv8oUBAoGAfmqeS5+wP4jaJvYWlAEGIYzS69838sCtB2GntrPKunrKd+GE/aO+8KLhil63GHciCMqO4dg/nZhQKUuqasVPn3humucxSBCb+T3wkPkddx1NpWz+cKjjY4kCMu9p4K/jYjYs8OuujNxAg8lJUK7uq3Vfqn1fICg+gnufTPqU7SM=-----END RSA PRIVATE KEY-----"
}

