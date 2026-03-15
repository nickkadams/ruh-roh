resource "aws_rds_cluster" "hardened" {
  cluster_identifier = "hardened"
  engine             = "postgres"
  engine_version     = "18.3"

  allocated_storage           = 10
  backup_retention_period     = 35
  master_username             = "foo"
  manage_master_user_password = true

  iam_database_authentication_enabled = true
  storage_encrypted                   = true
  kms_key_id                          = "arn:aws:kms:us-east-1:123456789012:key/1234abcd-12ab-34cd-56ef-1234567890ab"
  copy_tags_to_snapshot               = true
  enabled_cloudwatch_logs_exports     = ["audit", "error", "general", "slowquery", "postgresql"]
  deletion_protection                 = true

  tags = {
    Terraform = "true"
  }
}
