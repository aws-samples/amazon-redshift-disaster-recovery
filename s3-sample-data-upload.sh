# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0


# download the sample data to your local machine
curl https://docs.aws.amazon.com/redshift/latest/gsg/samples/tickitdb.zip --output tickitdb.zip

# create a new folder for sample data
mkdir tickitdb

# unzip the downloaded file to the new folder
unzip tickitdb.zip -d tickitdb

# upload the data to the S3 bucket (you can get the bucket name from the redshift-dependencies stack outputs in AWS console)
aws s3 sync tickitdb/ s3://<s3-bucket-name>/