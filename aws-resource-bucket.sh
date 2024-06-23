#!/bin/bash

cat <<EOF | kubectl create -f -
apiVersion: s3.aws.upbound.io/v1beta1
kind: Bucket
metadata:
  generateName: crossplane-bucket-
spec:
  forProvider:
    region: ap-southeast-2
  providerConfigRef:
    name: default
EOF
