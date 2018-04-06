cd code
wget --output-document sratoolkit.tar.gz http://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-ubuntu64.tar.gz
tar xzvf sratoolkit.current-ubuntu64.tar.gz
sudo ln -s --force $PWD/sratoolkit.2.9.0-ubuntu64/bin/* /usr/local/bin

# Download SRA files from NCBI
sudo apt-get install nodejs
sudo apt-get install npm
npm install bionode-ncbi -g
npm install -g n
n stable
bionode-ncbi search bioproject PRJNA183192
npm install bionode-sra -g
bionode-ncbi download sra PRJNA183192 --pretty

# Extract SRA files to fastq in parallel
export CORES=16
# Suggested fastq-dump parameters: https://edwards.sdsu.edu/research/fastq-dump/
export FASTQ_DUMP_FLAGS='--outdir fastq_dump_v2 --gzip --skip-technical  --readids --read-filter pass --dumpbase --split-3 --clip '
ls -1  */*.sra | xargs -P ${CORES} -I{} bash -c "fastq-dump $FASTQ_DUMP_FLAGS {}"
