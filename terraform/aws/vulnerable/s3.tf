resource "aws_rds_cluster" "vulnerable" {
  cluster_identifier      = "vulnerable"
  allocated_storage       = 10
  backup_retention_period = 0

  tags = {
    Terraform = "true"
  }
}
