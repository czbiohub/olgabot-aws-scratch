
get_ipython('cd /mnt/data/dnaseq')
! CORES = 16
metadata = pd.read_table('PRJEB3371.txt')
flattened_fastqs = pd.Series(list(itertools.chain(*metadata.fastq_ftp.str.split(';'))))
flattened_fastqs.index = flattened_fastqs.str.split('/').str[-2]
flattened_fastqs.to_csv('flattened_fastqs.csv')

    # fastqs = ' '.join(row.split(';'))
