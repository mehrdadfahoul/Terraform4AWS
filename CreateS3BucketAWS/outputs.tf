output "mehrdads3bucket" {
    description = "Name of your S3Bucket name"
    value = aws_s3_bucket.MyBucket.bucket
}
output "Bucket_arn" {
    description = "The ARn of S3Bucket"
    value = aws_s3_bucket.MyBucket.arn
  
}