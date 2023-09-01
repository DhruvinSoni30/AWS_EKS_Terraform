# EKS Cluster ID
output "aws_eks_cluster_name" {
  value = aws_eks_cluster.eks.id
}