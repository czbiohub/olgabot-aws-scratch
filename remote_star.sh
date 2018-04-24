
cd /mnt/data
aws s3 cp s3://olgabot-seq2loc/fastq/rnaseq fastq/rnaseq/


EXPERIMENT_IDS=$(cut -f 6 -d , /mnt/data/fastq/rnaseq/metadata.csv | tail -n +2 | tr '\n' ' ')

sudo /home/ubuntu/anaconda/bin/python ./utilities/alignment/run_star_and_htseq.py  \
    --taxon mus --s3_input_dir s3://olgabot-seq2loc/fastq/rnaseq \
    --num_partitions 10 --partition_id 0 --exp_ids $EXPERIMENT_IDS