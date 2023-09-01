# EKS Security Group ID
output "eks_security_group_id" {
  value = aws_security_group.eks_security_group.id
}