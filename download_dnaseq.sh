cd /mnt/data/dnaseq
export CORES=16
cut -f 2 -d , flattened_fastqs.csv | xargs -P ${CORES} -I{} bash -c "wget {}"
# Watch the file sizes grow!
watch -n 1 ls -l .
