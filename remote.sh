cd /mnt/data
aws s3 sync s3://czbiohub-maca/bcell_fastqs/ .

conda install --yes -c bioconda bowtie2 trinity igblast blast kallisto graphviz phylip trim-galore

cd /mnt/data
git clone https://github.com/Teichlab/bracer
cd bracer

## Keep running out of room when installing anaconda stuff
mv ~/anaconda /mnt/data
ln -s /mnt/data/anaconda ~/


# Conda install requiremednts
conda install -c bioconda --yes biopython matplotlib networkx cycler numpy pandas pyparsing pytz scipy seaborn six mock future  cutadapt
pip install .


# Run Bracer
bracer assemble -p 16 --species Mmus --config_file /mnt/data/fastq/bracer.conf \
    P9-MAA001889-3_38_F-1-1_S239_junc500 \
    /mnt/data/bracer_output/ \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R1_001.fastq.gz \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R2_001.fastq.gz

# Run Bracer  - longer junction
bracer assemble -p 16 --species Mmus --config_file /mnt/data/fastq/bracer.conf \
    --max_junc_len 500 \
    P9-MAA001889-3_38_F-1-1_S239_junc500 \
    /mnt/data/bracer_output/ \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R1_001.fastq.gz \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R2_001.fastq.gz


# Run Bracer - no trimming
bracer assemble -p 16 --species Mmus --config_file /mnt/data/fastq/bracer.conf \
    --no_trimming  \
    P9-MAA001889-3_38_F-1-1_S239_no-trimming \
    /mnt/data/bracer_output/ \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R1_001.fastq.gz \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R2_001.fastq.gz


# Run Bracer - no trimming, longer junction
bracer assemble -p 16 --species Mmus --config_file /mnt/data/fastq/bracer.conf \
    --no_trimming  \
    --max_junc_len 500 \
    P9-MAA001889-3_38_F-1-1_S239_notrimming-junc500 \
    /mnt/data/bracer_output/ \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R1_001.fastq.gz \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R2_001.fastq.gz


# rerun no trimming and run notrimming + longer junction right after
bracer assemble -p 16 --species Mmus --config_file /mnt/data/fastq/bracer.conf \
    --no_trimming  \
    P9-MAA001889-3_38_F-1-1_S239_no-trimming \
    /mnt/data/bracer_output/ \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R1_001.fastq.gz \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R2_001.fastq.gz && bracer assemble -p 16 --species Mmus --config_file /mnt/data/fastq/bracer.conf \
    --no_trimming  \
    --max_junc_len 500 \
    P9-MAA001889-3_38_F-1-1_S239_notrimming-junc500 \
    /mnt/data/bracer_output/ \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R1_001.fastq.gz \
    /mnt/data/fastq/P9-MAA001889-3_38_F-1-1_S239_R2_001.fastq.gz



# Run Bracer on most deeply sequenced samples
bracer assemble -p 16 --config_file /mnt/data/fastq/bracer.conf --species Mmus \
    I8-MAA000599-3_8_M-1-1_S246 \
    /mnt/data/bracer_output/ \
    /mnt/data/fastq/I8-MAA000599-3_8_M-1-1_S246_R1_001.fastq.gz \
    /mnt/data/fastq/I8-MAA000599-3_8_M-1-1_S246_R2_001.fastq.gz


touch /home/ubuntu/anaconda/lib/python3.6/site-packages/bracer.conf