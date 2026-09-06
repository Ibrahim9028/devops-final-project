

terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "project_info" {
  filename = "${path.module}/project-info.txt"

  content = <<-EOT
    DevOps Final Project
    Application: Nginx
    Container: Docker
    CI/CD: Jenkins
    Orchestration: Kubernetes
    Infrastructure as Code: Terraform
  EOT
}
