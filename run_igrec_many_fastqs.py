import os

import click

from run_igrec import run_igrec


@click.command()
@click.argument('fastqs', nargs=-1)
@click.argument('output_prefix')
@click.option('--barcoded', is_flag=True)
def cli(fastqs, output_prefix, barcoded):
    print(fastqs)

    for fastq in fastqs:
        # Only operate on R1s to avoid duplication
        if "R2" in fastqs:
            continue
        read1 = fastq
        print(read1)
        read2 = fastq.replace('_R1_', '_R2_')

        subfolder = os.path.basename(read1).split('_R1_')[0]
        print(subfolder)
        output_folder = os.path.join(output_prefix, subfolder)

        run_igrec(read1, read2, output_folder, barcoded)


if __name__ == '__main__':
    cli()
