#!/usr/bin/python3

import os
import sys
import signal
import glob
import cziRna1

# Get the option from the first and only argument.
if len(sys.argv) != 2:
    raise ValueError('Invoke with one argument.')
option = int(sys.argv[1])    

if not os.path.exists('data'):
    os.mkdir('data')


readLength = 62
kmerLength = 16
log2BucketSize = 24
minOverlap1 = 16      # For computeOverlappingMatedReads
minOverlap2 = 16      # For assembleConnectedComponent 
hashFraction = 0.1
errorRate1 = 0.03     # For computeOverlappingMatedReads
errorRate2 = 0.03     # For assembleConnectedComponent 
overflow = 20
loadFactor = 0.3
minComponentSize = 100
maxComponentSize = 100000
minConcordantCount = 6
maxDiscordantRatio = 0.03
maxConnectivity = 100
minPathReadCount = 30
readsFractionForLeftRightEdges = 0.2
maxFragmentLength = 500

# Minimum number of reads and bases for an isolated vertex to be kept.
minIsolatedReadCount = 50
minIsolatedBaseCount = 100

# Minimum number of reads and bases for a leaf vertex to be kept.
minLeafReadCount = 6
minLeafBaseCount = readLength

# Controls the amount of detail when writing labels of the contracted read graph.
detailedAssemblyOutput = True



# Get the reads from the fastq files.
if option==1:
    
    # Get the names of the fastq files, assumed to be named *.R1.fastq and *.R2.fastq.
    fastqFiles1 = glob.glob('*R1*fastq')
    fastqFiles2 = glob.glob('*R2*fastq')
    if len(fastqFiles1) != 1 or len(fastqFiles2) != 1:
        print('fastqFiles1:', fastqFiles1)
        print('fastqFiles2:', fastqFiles2)
        raise ValueError('Too few or too many fastq files.')
    fastqFile1 = fastqFiles1[0] 
    fastqFile2 = fastqFiles2[0]
    print('Current directory:', os.getcwd())
    print('All current files:', glob.glob('*'))
    print(fastqFile1)
    print(fastqFile2)
    a = cziRna1.Assembler()
    a.getReadsFromFastq(fastqFile1, fastqFile2, readLength, '*')


# Create the index.
if option==2:
    a = cziRna1.Assembler()
    a.accessReads(readLength)
    input('Enter something to continue:')
    a.createIndex(kmerLength, log2BucketSize, hashFraction)
    
      
# Find pairs of mated reads that overlap on both sides.
if option==4:
    a = cziRna1.Assembler()
    a.accessReads(readLength)
    a.accessIndex(kmerLength, hashFraction)
    a.computeOverlappingMatedReads(kmerLength, minOverlap1, errorRate1, overflow, loadFactor)
    
# Find connected components of the global mate read graph.
if option==5:
    a = cziRna1.Assembler()
    a.accessReads(readLength)
    a.accessOverlappingMatedReads()
    a.computeConnectedComponents(minComponentSize)
    
# Process a single connected component of the global mate read graph.
if option==6:
    a = cziRna1.Assembler()
    a.accessReads(readLength)
    a.accessOverlappingMatedReads()
    a.accessConnectedComponents()
    componentId = int(input('Enter connected component to process: '))
    assembledSequence = a.assembleConnectedComponent(
        componentId, 
        readLength, 
        kmerLength, 
        maxConnectivity,
        maxComponentSize,
        errorRate2, 
        minOverlap2, 
        minConcordantCount, 
        maxDiscordantRatio, 
        minIsolatedReadCount,
        minIsolatedBaseCount,
        minLeafReadCount,
        minLeafBaseCount,
        minPathReadCount,
        readsFractionForLeftRightEdges,
        maxFragmentLength,
        detailedAssemblyOutput)
    print(assembledSequence)

# Process all  connected components of the global mate read graph.
if option==7:
    a = cziRna1.Assembler()
    a.accessReads(readLength)
    a.accessOverlappingMatedReads()
    a.accessConnectedComponents()
    a.assemble(
        readLength, 
        kmerLength, 
        maxConnectivity,
        maxComponentSize,
        errorRate2, 
        minOverlap2, 
        minConcordantCount, 
        maxDiscordantRatio, 
        minIsolatedReadCount,
        minIsolatedBaseCount,
        minLeafReadCount,
        minLeafBaseCount,
        minPathReadCount,
        readsFractionForLeftRightEdges,
        maxFragmentLength)


    





