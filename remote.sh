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
bracer assemble -p 16 --species Mmus \
    P9-MAA001889-3_38_F-1-1_S239 \
    /mnt/data/bracer_output/P9-MAA001889-3_38_F-1-1_S239 \
    P9-MAA001889-3_38_F-1-1_S239_R1_001.fastq.gz \
    P9-MAA001889-3_38_F-1-1_S239_R2_001.fastq.gz


touch /home/ubuntu/anaconda/lib/python3.6/site-packages/bracer.conf