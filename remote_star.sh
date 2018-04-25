
cd /mnt/data
aws s3 sync s3://olgabot-seq2loc/fastq/rnaseq /mnt/data/fastq/rnaseq/

for f in $(ls *.fastq.gz ); do echo $f ; gunzip --keep $f & done

# Install correct versions
conda install htseq=0.9.1
conda install star=2.5.2b


EXPERIMENT_IDS=$(cut -f 6 -d , /mnt/data/fastq/rnaseq/metadata.csv | tail -n +2 | tr '\n' ' ')

sudo /home/ubuntu/anaconda/bin/python ~/code/utilities/utilities/alignment/run_star_and_htseq.py  \
    --taxon mus --s3_input_dir s3://olgabot-seq2loc/fastq/rnaseq \
    --root_dir /mnt/data \
    --num_partitions 10 --partition_id 0 --exp_ids $EXPERIMENT_IDS