package s3policy

default allow = false

allow {
  input.request.iam_role == "st-access-role"
}