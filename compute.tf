resource "google_compute_disk" "default" {
  name  = "disk-free-e2-micro"
  zone  = var.zone
  image = var.image
  type  = "pd-standard"
  size  = "30"
}

resource "google_compute_instance" "vm_instance" {
  name         = "free-e2-micro"
  machine_type = "e2-micro"

  boot_disk {
    source      = google_compute_disk.default.name
    auto_delete = false
  }

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
      nat_ip = var.IP_ADDR != "" ? var.IP_ADDR : null
    }
  }

  metadata = {
    sshKeys = (var.SSH_USER != "" && var.SSH_PUB_KEY != "") ? "${var.SSH_USER}:${var.SSH_PUB_KEY}" : null
  }
}
