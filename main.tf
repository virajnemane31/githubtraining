provider "google" {
  project     = "kulbhushanmayer"
  region  = "us-central1"
  zone    = "us-central1-a"
}

data "google_compute_disk" "demo31" {
    name = "demo31"
    project = "kulbhushanmayer"
}

output "demo31" {
    value = data.google_compute_disk.demo31
}