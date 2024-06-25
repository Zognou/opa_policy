package s3policy

import data.s3policy.allow

test_allow_access {
  input := {
    "request": {
      "iam_role": "st-access-role",
      "action": "s3:GetObject",
      "resource": "arn:aws:s3:::example-bucket/*"
    }
  }
  allow with input as input
}

test_deny_access {
  input := {
    "request": {
      "iam_role": "other-role",
      "action": "s3:GetObject",
      "resource": "arn:aws:s3:::example-bucket/*"
    }
  }
  not allow with input as input
}