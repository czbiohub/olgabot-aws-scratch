# Arguments
DATA_DIR=/mnt/rawdata
READS=/data/presto-output_krista_primers_barcode8_R2_reverse/IgSeqBX1-final_collapse-unique_atleast-2.fastq
SAMPLE_NAME=IgSeqBX1
OUT_DIR=/data/changeo-output_first10k
NPROC=12

# Run pipeline in docker image
sudo docker run -v $DATA_DIR:/data:z kleinstein/immcantation:1.7.0 changeo-igblast \
    -s $READS -n $SAMPLE_NAME -o $OUT_DIR -p $NPROC \
    | tee run_igblast.out

# Singularity command
#singularity exec -B $DATA_DIR:/data immcantation-1.7.0.img changeo-igblast \
#    -s $READS -n $SAMPLE_NAME -o $OUT_DIR -p $NPROC \
#    | tee run_igblast.out
