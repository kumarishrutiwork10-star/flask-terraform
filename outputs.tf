output "ec2_public_ip" {
  description = "Public IP of the Flask server"
  value       = aws_instance.flask_server.public_ip
}

output "ecr_repository_url" {
  description = "ECR Repository URL"
  value       = aws_ecr_repository.flask_app.repository_url
}