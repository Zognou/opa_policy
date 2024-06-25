# OPA Policy for S3 Access Control

## Objective
Ensure that only users with the IAM role `st-access-role` can access the S3 bucket.

## Policy
Defined in `policy.rego`.

## Tests
Defined in `policy_test.rego`.

## Test Results
![Test Results](test_results.png)

## Edge Cases
- Users without any IAM role specified.
- Users with multiple roles.

## Logging and Monitoring
- Integrate with AWS CloudTrail to monitor access requests.
- Use AWS CloudWatch to set up alerts for unauthorized access attempts.

## Assumptions
- The IAM role name is `st-access-role`.
- The policy checks only for the presence of the specified IAM role.

## How to Run
1. Install OPA.
2. Place `policy.rego` and `policy_test.rego` in the same directory.
3. Run `opa test policy.rego policy_test.rego`.
