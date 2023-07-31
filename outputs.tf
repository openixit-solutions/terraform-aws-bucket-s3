output "s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.this.arn
}

output "s3_bucket_id" {
  description = "ID of the bucket."
  value       = aws_s3_bucket.this.id
}

output "s3_bucket_regional_domain" {
  description = "Regional Domain of the bucket."
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}
