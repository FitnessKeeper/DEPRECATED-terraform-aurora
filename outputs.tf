output "writer_endpoint" {
  value = "${aws_rds_cluster.aurora.endpoint}"
}

output "reader_endpoint" {
  value = "${aws_rds_cluster.aurora.reader_endpoint}"
}

output "security_group_id"{
  value = "foo"
}
