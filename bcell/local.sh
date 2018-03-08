
## Launch fastqc
aegea launch --iam-role olgabot-s3readonly --ami-tags Name=czbiohub-fastqc \
  --instance-type m4.4xlarge olgabot-fastqc
aegea ssh ubuntu@olgabot-fastqc

## Launch presto
aegea launch --iam-role olgabot-s3readonly --ami-tags Name=czbiohub-presto \
  --instance-type m4.4xlarge olgabot-presto
aegea ssh ubuntu@olgabot-presto

## Use AWS Linux Ami with Docker
aegea launch olgabot-immcantation --ami ami-f2d3638a --iam-role olgabot-s3readonly \
  --instance-type m4.4xlarge
aegea ssh ubuntu@olgabot-immcantation
