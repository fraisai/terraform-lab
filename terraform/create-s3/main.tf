resource "aws_s3_bucket" "fariha-bucket" {
    bucket              = "my-bucket-fariha"

    tags = {
        Name            = "fariha"
        Environment     = "dev"
    }
}


# where you define the resource
