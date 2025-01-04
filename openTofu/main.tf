provider "google"{
  project = "project ID"
  region  = "region-mx"
  zone    = "zone-mx"
}

respurce "google_compute_instance" "mi_vm" {
  name         = "gcp-vm"
  machine_type = "n1-standard-1"
  zone         = "zone-mx"

  boot_disk {
    initialize_params{
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"
    acces_config {
      // Ephemeral IP
    }
  }
}
