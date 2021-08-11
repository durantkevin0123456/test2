resource "azurerm_postgresql_server" "maor_test" {
    name                                = "example-psqlserver"
    location                            = azurerm_resource_group.example.location
    resource_group_name                 = azurerm_resource_group.example.name
    administrator_login                 = "psqladminun"
    administrator_login_password        = "H@Sh1CoR3!"
    sku_name                            = "GP_Gen5_4"
    storage_mb                          = 640000
    version                             = "9.6"
    ssl_enforcement_enabled             = false
}
