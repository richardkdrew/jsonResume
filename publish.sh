#!/usr/bin/env bash
BUCKET=rd-resume
aws  s3 sync index.html s3://$BUCKET/