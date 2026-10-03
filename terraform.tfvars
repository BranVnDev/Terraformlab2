project_name       = "terraformlab2"
environment        = "dev"
location           = "mexicocentral"
vnet_location      = "centralus"
vnet_address_space = ["10.0.0.0/16"]
subscription_id    = "6d2eba46-fd57-43ff-8d7d-7a9ae7443dbe"

tags = {
  managed_by  = "terraform"
  name        = "IT"
  owner       = "IT"
  cost_center = "UTVT"
}