output "aws_vpc_id" {
    value = "${aws_vpc.cluster-vpc.id}"
}

output "aws_subnet_ids_public" {
    value = ["${aws_subnet.cluster-vpc-subnets-public.*.id}"]
}

output "aws_security_group" {
    value = ["${aws_security_group.kubernetes.*.id}"]

}
output "aws_security_group_k8s_bastion" {
    value = ["${aws_security_group.k8s-bastion.*.id}"]
}
output "aws_security_group_k8s_loadbalancer" {
    value = ["${aws_security_group.k8s-loadbalancer.*.id}"]
}
output "aws_security_group_kubernetes_api" {
    value = ["${aws_security_group.aws-kubernetes-api.*.id}"]
}
