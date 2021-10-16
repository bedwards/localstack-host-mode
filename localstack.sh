#!/bin/zsh

set -eux

# https://localstack.cloud/features
# https://docs.aws.amazon.com/cli/latest/reference/#available-services
SERVICES="iam"
SERVICES="${SERVICES},lambda"
SERVICES="${SERVICES},apigateway"
SERVICES="${SERVICES},s3"
SERVICES="${SERVICES},cloudformation"
SERVICES="${SERVICES},cloudwatch"
SERVICES="${SERVICES},ecr"
SERVICES="${SERVICES},events"
SERVICES="${SERVICES},secretsmanager"
SERVICES="${SERVICES},stepfunctions"
SERVICES="${SERVICES},sts"

SERVICES="${SERVICES}" LAMBDA_EXECUTOR=local localstack start --host
pgrep kinesis | xargs kill -9
