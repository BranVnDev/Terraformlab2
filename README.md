# Lab2 - Terraform en Azure

Configuración de Terraform para crear un grupo de recursos y una Virtual Network en Azure.

## Recursos creados

- Grupo de recursos: `rg-terraformlab2-dev-mexicocentral-001`
- Virtual Network: `vnet-terraformlab2-dev-centralus-001`
- Espacio de direcciones: `10.0.0.0/16`

El grupo de recursos conserva `mexicocentral` como ubicación. La suscripción `Azure for Students` solo permite ciertas regiones para redes virtuales, por eso la VNet se creó en `centralus`.

## Archivos

Orden recomendado de creación:

1. `providers.tf`
2. `variables.tf`
3. `terraform.tfvars`
4. `locals.tf`
5. `main.tf`
6. `outputs.tf`
7. `.gitignore`
8. `README.md`

- `providers.tf`: versión de Terraform y proveedor `azurerm`.
- `variables.tf`: variables de entrada.
- `terraform.tfvars`: valores del laboratorio.
- `locals.tf`: nombres y etiquetas comunes.
- `main.tf`: grupo de recursos y VNet.
- `outputs.tf`: identificadores y nombre de la VNet.

## Ejecución en orden

Ejecutar estos comandos desde esta carpeta:

```powershell
terraform version
terraform fmt
terraform init
terraform validate
az account show
terraform plan
terraform apply -auto-approve
az resource list --resource-group rg-terraformlab2-dev-mexicocentral-001 --query "[].{name:name,type:type,location:location}" --output table
```

## Resultado esperado

La validación debe mostrar `Success! The configuration is valid.`. El plan final debe mostrar `1 to add, 0 to change, 0 to destroy` cuando el grupo de recursos ya exista. Después de `apply`, Terraform debe mostrar `Apply complete` y la VNet debe aparecer en el portal de Azure dentro del grupo de recursos.

Portal: <https://portal.azure.com>