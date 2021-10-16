#!/bin/bash

set -eux

LAMBDA_EXECUTOR=local localstack start --host
pgrep kinesis | xargs kill -9
