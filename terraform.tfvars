project_name       = "integradora"
environment        = "dev"
location           = "mexicocentral"
vnet_location      = "centralus"
vnet_address_space = ["10.0.0.0/16"]

tags = {
  managed_by  = "terraform"
  name        = "IT"
  cost_center = "integradora"
}