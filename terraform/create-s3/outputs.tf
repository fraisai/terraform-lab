output "bucket_fqdn" {
    value       = aws_s3_bucket.fariha-bucket.bucket_regional_domain_name
    description = "Domain name of the created S3 bucket"
}

# where you specify the bucket domain name as an output