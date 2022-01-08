resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}

resource "google_compute_firewall" "ssh" {
  name    = "ssh"
  network = google_compute_network.vpc_network.name

  dynamic "log_config" {
    for_each = var.firewall_enable_logging == true ? [{
      metadata = "INCLUDE_ALL_METADATA"
    }] : []

    content {
      metadata = log_config.value.metadata
    }
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_firewall" "https" {
  name    = "https"
  network = google_compute_network.vpc_network.name

  dynamic "log_config" {
    for_each = var.firewall_enable_logging == true ? [{
      metadata = "INCLUDE_ALL_METADATA"
    }] : []

    content {
      metadata = log_config.value.metadata
    }
  }

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
}

resource "google_compute_firewall" "postgres" {
  name    = "postgres"
  network = google_compute_network.vpc_network.name

  dynamic "log_config" {
    for_each = var.firewall_enable_logging == true ? [{
      metadata = "INCLUDE_ALL_METADATA"
    }] : []

    content {
      metadata = log_config.value.metadata
    }
  }

  allow {
    protocol = "tcp"
    ports    = ["5432"]
  }
}
