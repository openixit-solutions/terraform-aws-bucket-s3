variable "region" {
  description = "Region of the resources"
  type        = string
}

variable "bucket_name" {
  description = "Name of S3 Bucket"
  type        = string
}

variable "force_destroy" {
  description = "S3 Force destroy"
  type        = bool
  default     = false
}

variable "expected_bucket_owner" {
  description = "The account ID of the expected bucket owner"
  type        = string
  default     = null
}

variable "kms_key" {
  description = "The AWS KMS master key ID used for the SSE-KMS encryption. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms"
  type        = string
  default     = null
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
  type        = string
  default     = "AES256"
}

variable "object_ownership" {
  description = "Object ownership. Valid values: BucketOwnerPreferred, ObjectWriter or BucketOwnerEnforced"
  type        = string
}

variable "acl" {
  description = "Access control list type"
  type        = string
  default     = "private"
}

variable "block_public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket. Defaults to false"
  type        = bool
  default     = false
}

variable "block_public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket. Defaults to false"
  type        = bool
  default     = false
}

variable "ignore_public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to false"
  type        = bool
  default     = false
}

variable "restrict_public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to false"
  type        = bool
  default     = false
}

variable "cors_rule" {
  description = "List of maps containing rules for Cross-Origin Resource Sharing"
  type        = any
  default     = []
}

variable "policy" {
  description = "(Optional) A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket"
  type        = map(string)
  default     = {}
}
