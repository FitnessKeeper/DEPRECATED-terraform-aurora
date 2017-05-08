resource "aws_kms_key" "aurora" {
  description = "RDS master key for ASICS Digital ${var.name}-${data.aws_vpc.vpc.tags["Name"]}"
  deletion_window_in_days = 30
  enable_key_rotation = "true"
}

resource "aws_kms_alias" "aurora" {
  name = "alias/asics-digital-${var.name}-${data.aws_vpc.vpc.tags["Name"]}-rds-key"
  target_key_id = "${aws_kms_key.aurora.key_id}"
}
