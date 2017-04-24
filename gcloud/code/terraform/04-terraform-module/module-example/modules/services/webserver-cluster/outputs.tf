output "public_ip" {
  value = "${google_compute_address.example.address}"
}

#output "asg_name" {
#  value = "${aws_autoscaling_group.example.name}"
#}
#
#output "elb_security_group_id" {
#  value = "${aws_security_group.elb.id}"
#}
