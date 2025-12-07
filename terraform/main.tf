resource "helm_release" "i2btech-reto-app" {
  name      = "i2btech-reto-app"
  chart     = "../charts/i2btech-reto-app"
  namespace = "i2btech-reto-app"

  set {
    name  = "image.repository"
    value = var.image_repository
  }

  set {
    name  = "image.tag"
    value = var.image_tag
  }
}
