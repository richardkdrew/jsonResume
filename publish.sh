#!/usr/bin/env bash
BUCKET=rd-resume
aws s3 sync . s3://$BUCKET/ --exclude "*.sh"