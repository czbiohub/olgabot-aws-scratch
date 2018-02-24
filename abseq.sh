# Local folder
DATA_DIR=/mnt/rawdata

#  Files on Docker container
YAML=/data/sample.yml
READS_R1=/data/IgSeqBX1_S1_R1_001_first10k.fastq
READS_R2=/data/IgSeqBX1_S1_R2_001_first10k.fastq
R1_PRIMERS=/data/primers_R1.fasta
R2_PRIMERS=/data/primers_R2_reverse_complement.fasta
BARCODE_LENGTH=8
SAMPLE_NAME=IgSeqBX1
OUT_DIR=/data/presto-output_krista_primers_barcode8_R2_reverse
NPROC=16

sudo docker run -v $DATA_DIR:/data:z kleinstein/immcantation:1.7.0 /data/presto-abseq.sh \
    -1 $READS_R1 -2 $READS_R2 -y $YAML -n $SAMPLE_NAME -o $OUT_DIR -p $NPROC -j $R1_PRIMERS -v $R2_PRIMERS -b $BARCODE_LENGTH \
    | sudo tee run_presto.out

