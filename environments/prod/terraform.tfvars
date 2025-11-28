rgs = {
  rg1 = {
    name       = "rg-prod-devopsinsiders23"
    location   = "centralindia"
    managed_by = "Terraform"
    tags = {
      env = "dev"
    }
  }
}

container_registries = {
  c1 = {
    name                = "devopsinsidersc123"
    resource_group_name = "rg-prod-devopsinsiders23"
    location            = "centralindia"
    sku                 = "Standard"
    admin_enabled       = true
  }
}

key_vaults = {
  k1 = {
    name                        = "devopsinsiderskv232"
    location                    = "centralindia"
    resource_group_name         = "rg-prod-devopsinsiders23"
    enabled_for_disk_encryption = true
    tenant_id                   = "286ec521-64d7-49c4-afce-36d0d29cc467"
    soft_delete_retention_days  = 7
    purge_protection_enabled    = true
    sku_name                    = "standard"
    access_policies = {
      a1 = {
        tenant_id = "286ec521-64d7-49c4-afce-36d0d29cc467"
        object_id = "bba509d5-dc5d-4b05-a7af-47c1e7df9aad"

        key_permissions     = ["Get"]
        secret_permissions  = ["Get"]
        storage_permissions = ["Get"]
      }
    }
  }
}
