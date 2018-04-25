

conda install --yes -c bioconda trinity

# SRR62956{4,5} = A-549, replicates a and b
Trinity --seqType fq --max_memory 4G \
    --left /mnt/data/fastq/rnaseq/SRR629564_pass_1.fastq,/mnt/data/fastq/rnaseq/SRR629565_pass_1.fastq  \
    --right /mnt/data/fastq/rnaseq/SRR629564_pass_2.fastq,/mnt/data/fastq/rnaseq/SRR629565_pass_2.fastq  \
    --CPU 16 --verbose --workdir /mnt/data/trinity-workdir

# SRR629563 = U-2 OS cell line
Trinity --seqType fq --max_memory 16G \
    --left /mnt/data/fastq_dump_v2/SRR629563_1.fastq \
    --right /mnt/data/fastq_dump_v2/SRR629563_2.fastq \
    --output /mnt/data/trinity-output/fastq_dump_v2/u2os/trinity-output \
    --CPU 6 --verbose --workdir /mnt/data/trinity-workdir

# SRR629563 = U-2 OS cell line
Trinity --seqType fq --max_memory 16G \
    --left /mnt/data/fastq_dump_v3/SRR629563_pass_1.fastq \
    --right /mnt/data/fastq_dump_v3/SRR629563_pass_2.fastq \
    --output /mnt/data/trinity-output/fastq_dump_v3/u2os/ \
    --CPU 6 --verbose --workdir /mnt/data/trinity-workdir