#!/bin/bash

zip helloworld.zip helloworld handler.py
aws s3api create-bucket --bucket lambdazipsbucket
aws s3 cp helloworld.zip s3://lambdazipsbucket
aws lambda update-function-code --function-name Helloworldv1 --zip-file fileb://./helloworld.zip








