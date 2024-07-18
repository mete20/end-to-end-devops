provider "google" {
  project = "devops-school-enuygun"
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "deneme"
  location = "us-central1"

  initial_node_count = 2

  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
    preemptible  = true
  }
}



