variable "nombre_IP" {
  type = string
  description = "IPs"
}




variable "nombre_grupo_recurso" {
  description = "Nombre del grupo de recursos de Azure"
  type        = string
  default     = "mi-grupo-de-recursos"
}
