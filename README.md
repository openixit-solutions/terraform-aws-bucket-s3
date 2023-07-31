# S3 Bucket 

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region) | Region for Resources | `string` | n/a | yes |
| <a name="input_bucket_name"></a> [bucket_name](#input\_bucket_name) | Name of S3 Bucket | `any` | n/a | yes |
| <a name="input_force_destroy"></a> [force_destroy](#input\_force_destroy) | S3 Force destroy | `bool` | `false` | no |
| <a name="input_expected_bucket_owner"></a> [expected_bucket_owner](#input\_expected_bucket_owner) | The account ID of the expected bucket owner | `string` | `null` | no |
| <a name="input_kms_key"></a> [kms_key](#input\_kms_key) | The AWS KMS master key ID used for the SSE-KMS encryption. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms | `string` | null | no |
| <a name="input_sse_algorithm"></a> [sse_algorithm](#input\_sse_algorithm) | The server-side encryption algorithm to use. Valid values are AES256 and aws:kms | `string` | `"AES256"` | no |
| <a name="input_object_ownership"></a> [object_ownership](#input\_object_ownership) | Object ownership. Valid values: BucketOwnerPreferred, ObjectWriter or BucketOwnerEnforced | `string` | n/a | yes |
| <a name="input_acl"></a> [acl](#input\_acl) | Access control list type | `string` | `"private"` | no |
| <a name="input_block_public_acls"></a> [block_public_acls](#input\_block_public_acls) | Whether Amazon S3 should block public ACLs for this bucket. Defaults to false | `bool` | `false` | no |
| <a name="input_block_public_policy"></a> [block_public_policy](#input\_block_public_policy) | Whether Amazon S3 should block public bucket policies for this bucket. Defaults to false | `bool` | `false` | no |
| <a name="input_ignore_public_acls"></a> [ignore_public_acls](#input\_ignore_public_acls) | Whether Amazon S3 should ignore public ACLs for this bucket. Defaults to false | `bool` | `false` | no |
| <a name="input_restrict_public_buckets"></a> [restrict_public_buckets](#input\_restrict_public_buckets) | Whether Amazon S3 should restrict public bucket policies for this bucket. Defaults to false | `bool` | `false` | no |
| <a name="input_cors_rule"></a> [cors_rule](#input\_cors_rule) | List of maps containing rules for Cross-Origin Resource Sharing | `any` | `[]` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | (Optional) A valid bucket policy JSON document | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Module custom tags | `map(string)` | `{}` | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id) | ID of the bucket. |
| <a name="output_s3_bucket_regional_domain"></a> [s3\_bucket\_regional\_domain](#output\_s3\_bucket\_regional\_domain) | Regional Domain of the bucket. |
<!-- END_TF_DOCS -->
