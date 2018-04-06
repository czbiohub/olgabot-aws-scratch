# Copy metadata and U-2 OS file
aws s3 cp  --recursive  --exclude "*" --include "metadata*" --include "SRR629563*" s3://olgabot-seq2loc/fastq/rnaseq/ .
