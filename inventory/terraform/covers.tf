
/*
 * Specification:
 *   S3 Bucket with Public Read access Policy
 *   Load all of the images in cover_images
 */


/***************************
 S3 SECTION
 ***************************/

locals {
  s3_image_bucket = "cover-images-${data.aws_caller_identity.current.account_id}-${terraform.workspace}"
}

/***************************
 LOAD OBJECTS SECTION
 ***************************/


