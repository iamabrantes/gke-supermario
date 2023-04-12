provider "google" {
  project = "teste-383422" #Alterar
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_container_cluster" "cluster" {
  name               = "cluster-gke"
  location           = "us-central1-c"
  initial_node_count = 3

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 50
    disk_type    = "pd-standard"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  timeouts {
    create = "30m"
    update = "30m"
    delete = "30m"
  }
}