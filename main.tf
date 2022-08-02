provider "google" {
  project     = "kulbhushanmayer"
  region  = "us-central1"
  zone    = "us-central1-a"
}

data "google_compute_disk" "demo31" {
    name = "demo31"
    project = "kulbhushanmayer"
}

resource "google_compute_disk" "demo31" {
  name  = "demo31"
  type  = "pd-ssd"
  zone  = "us-central1-a"
  image = "debian-9-stretch-v20200805"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
}

output "demo31" {
    value = data.google_compute_disk.demo31
}