provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  source = "github.com/sundarsitaraman/terraform-modules//services/webserver-cluster?ref=0.0.1

  cluster_name = "webservers-stage"
  db_remote_state_bucket = "msitara100-terraform-up-and-running-state"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size = 1
  max_size = 2
}
