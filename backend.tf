terraform {

backend "s3" {
  bucket = "routii-state-bucket"
  key    = "dev"
  region = "eu-central-1"
}
}