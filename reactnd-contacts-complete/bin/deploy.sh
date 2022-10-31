#!/bin/bash
aws s3api create-bucket --bucket my-564345-bucket --region us-east-1 \
&& aws s3 cp --recursive --acl public-read ./build s3://my-564345-bucket/ \
&& aws s3 website s3://my-564345-bucket/ --index-document index.html