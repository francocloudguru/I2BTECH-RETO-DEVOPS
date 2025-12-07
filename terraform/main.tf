resource "helm_release" "i2btech-reto-app2" {
  name      = "i2btech-reto-app2"
  chart     = "../charts/i2btech-reto-app2"
  namespace = "i2btech-reto-app-ns"

  set {
    name  = "image.repository"
    value = var.image_repository
  }

  set {
    name  = "image.tag"
    value = var.image_tag
  }
}
