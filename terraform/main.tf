# Generate random text for a unique storage account name

resource "random_id" "cuenta_almacenamiento" {
  keepers = {
    
# Generate a new ID only when a new resource group is defined 

    resource_group = azurerm_group.rg.name

# Creamos una cadena aleatoria con una longitud de 8 bytes, que se utiliza para generar un nombre unico.

  }

    byte_length = 8

}

# Generamos una contraseña aleatoria de 20 caracteres que contiene 
# al menos una letra minuscula, masyuscula, un numero y un caracter especial

resource "random_password" "contraseña" {
  length = 20
  min_lower = 1
  min_upper = 1 
  min_numeric = 1
  min_special = 1
  special = true

}

# Generamos una cadena de texto aleatoria de un solo caracter que se utiliza como prefijo

resource "random_pet" "prefijo" {
  prefix = var.prefix
  length = 1

}

// Estos recursos de tipo "random" se utilizan para evitar conflictos de nombres y para mejorar
// la seguridad de los recursos definidos en el archivo