#! /bin/bash

set -exu


aws cloudformation update-stack \
          --stack-name circle-cloudformation-4 \
          --use-previous-template \
          --parameters \
            ParameterKey=ArtifactUrl,ParameterValue=$ARTIFACT_URL \
            ParameterKey=AMI,UsePreviousValue=true \
            ParameterKey=SecurityGroup,UsePreviousValue=true \
            ParameterKey=CircleToken,UsePreviousValue=true \
            ParameterKey=KeyName,UsePreviousValue=true \