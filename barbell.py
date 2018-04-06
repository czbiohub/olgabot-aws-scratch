#!/usr/bin/env python3

import os
import glob
import cziRna1
import click


@click.group()
@click.option('--read-length', default=62)
@click.option('--kmer-length', default=16)
@click.pass_context
def cli(ctx, read_length, kmer_length):
    ctx.obj['READ_LENGTH'] = read_length
    ctx.obj['KMER_LENGTH'] = kmer_length


def resolve_reads(pattern):
    """Gets the path of the reads if a wildcard is given
    
    Otherwise returns whitespace-separated reads
    """
    if "*" in pattern:
        fastqs = glob.glob(pattern)
    else:
        fastqs = pattern.split()
    return fastqs


def get_read_length(fastq):
    """Check the length of the first read"""
    with open(fastq) as f:
        for i, line in enumerate(f.read()):
            if i == 1:
                return len(line.strip())


@cli.command()
@click.option('--read1', default='*R1*fastq')
@click.option('--read2', default='*R2*fastq')
@click.pass_context
def twobit(ctx, read1, read2):
    if not os.path.exists('data'):
        os.mkdir('data')

    read1 = resolve_reads(read1)
    read2 = resolve_reads(read2)

    # read_length = get_read_length(read1)
    assembler = cziRna1.Assembler()

    for r1, r2 in zip(read1, read2):
        click.echo('Reading {r1} and {r2}'.format(r1=r1, r2=r2))
        assembler.getReadsFromFastq(r1, r2, ctx.obj["READ_LENGTH"], '*')


@cli.command()
@click.option('--log2-bucket-size', default=24)
@click.option('--hash-fraction', default=0.1)
@click.pass_context
def index(ctx, log2_bucket_size, hash_fraction):
    assembler = cziRna1.Assembler()
    assembler.accessReads(ctx.obj["READ_LENGTH"])
    input('Enter something to continue:')
    assembler.createIndex(ctx.obj["KMER_LENGTH"],
                          log2_bucket_size, hash_fraction)


@cli.command()
@click.option('--hash-fraction', default=0.1)
@click.option('--min-overlap', default=16)
@click.option('--error-rate', default=0.03)
@click.option('--overflow', default=20)
@click.option('--load-factor', default=0.3)
@click.pass_context
def overlap(ctx, hash_fraction, min_overlap, error_rate, overflow,
            load_factor):
    read_length = ctx.obj["READ_LENGTH"]
    kmer_length = ctx.obj["KMER_LENGTH"]

    assembler = cziRna1.Assembler()
    assembler.accessReads(read_length)
    assembler.accessIndex(kmer_length, hash_fraction)
    assembler.computeOverlappingMatedReads(kmer_length, min_overlap,
                                           error_rate, overflow, load_factor)


@cli.command()
@click.option('--max-connectivity', default=100)
@click.option('--max-component-size', default=1e5)
@click.option('--error-rate', default=0.03)
@click.option('--min-overlap', default=16)
@click.option('--min-concordant-count', default=6)
@click.option('--max-discordant-ratio', default=0.03)
@click.option('--min-isolated-read-count', default=50,
                help='Minimum number of reads for an isolated vertex to '
                     'be kept')
@click.option('--min-isolated-base-count', default=100,
                help='Minimum number of basesfor an isolated vertex to '
                     'be kept')
@click.option('--min-leaf-read-count', default=6,
                help="Minimum number of reads for a leaf vertex to be kept")
@click.option('--min-leaf-base-count', default=6,
                help="Minimum number of bases for a leaf vertex to be kept")
@click.option('--min-path-read-count', default=30)
@click.option('--reads-fraction-for-left-right-edges', default=0.2)
@click.option('--max-fragment-length', default=500)
def assemble(ctx,
             max_connectivity,
             max_component_size,
             error_rate,
             min_overlap,
             min_concordant_count,
             max_discordant_ratio,
             min_isolated_read_count,
             min_isolated_base_count,
             min_leaf_read_count,
             min_leaf_base_count,
             min_path_read_count,
             reads_fraction_for_left_right_edges,
             max_fragment_length):

    read_length = ctx.obj["READ_LENGTH"]
    kmer_length = ctx.obj["KMER_LENGTH"]

    assembler = cziRna1.Assembler()
    assembler.accessReads(read_length)
    assembler.accessOverlappingMatedReads()
    assembler.accessConnectedComponents()
    assembler.assemble(
        read_length,
        kmer_length,
        max_connectivity,
        max_component_size,
        error_rate,
        min_overlap,
        min_concordant_count,
        max_discordant_ratio,
        min_isolated_read_count,
        min_isolated_base_count,
        min_leaf_read_count,
        min_leaf_base_count,
        min_path_read_count,
        reads_fraction_for_left_right_edges,
        max_fragment_length)


if __name__ == "__main__":
    cli()