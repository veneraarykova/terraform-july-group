resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket_prefix = "hello-"
  
}

resource "aws_s3_bucket" "bucket" {
  bucket = "kaizen-venera"
  
}

output bucket_info{
    value = aws_s3_bucket.bucket
}