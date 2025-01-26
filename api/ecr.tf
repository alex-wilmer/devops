resource "aws_ecr_repository" "app_repo" {
  name = "express-app-repo-unique"
}

output "ecr_repository_url" {
  value = aws_ecr_repository.app_repo.repository_url
}