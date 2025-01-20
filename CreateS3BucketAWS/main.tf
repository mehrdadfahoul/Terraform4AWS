provider "aws" {
    region = var.aws_region
}
resource "aws_s3_bucket" "MyBucket" {
    bucket = var.mehrdads3bucket
    acl = "private"   #defualt privilages for improve sescurity

    versioning {
      enabled = true #enable versionign
    }

    server_side_encryption_configuration {
      rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES256" #Defualt Encryption
        }
      }
    }
#    block_public_access {
#       block_public_acls       = true
#       block_public_policy     = true
#       ignore_public_acls      = true
#       restrict_public_buckets = true
#    }

    tags = {
        Name            = var.mehrdads3bucket
        Environment     = var.environment
    } 
}

resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket        = aws_s3_bucket.MyBucket.id 
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
  
}