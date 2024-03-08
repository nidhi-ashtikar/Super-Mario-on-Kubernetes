terraform {
  backend "s3" {
    bucket = "Super-Mario-game-nidhi-bucket-440" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "ap-south-1"
  }
}