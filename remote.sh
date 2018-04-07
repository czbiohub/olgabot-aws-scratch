# Copy metadata and U-2 OS file
mkdir ~/fastq
cd ~/fastq
aws s3 cp  --recursive  --exclude "*" --include "metadata*" --include "SRR629563*" s3://olgabot-seq2loc/fastq/rnaseq/ .

# Set up the directory
mkdir ~/hash_fraction0.22/
cd ~/hash_fraction0.22/
cp ~/code/olgabot-aws-scratch/barbell.py .
ln -s ~/fastq/* .
ln -s SRR629563_pass_1.fastq SRR629563_pass_R1.fastq
ln -s SRR629563_pass_2.fastq SRR629563_pass_R2.fastq

# Run the code
python3 barbell.py twobit
# @root  python3 barbell.py twobit
#Reading SRR629563_pass_R1.fastq and SRR629563_pass_R2.fastq
#Read 0 read pairs, kept 0
#Read 1000000 read pairs, kept 465860
#Read 2000000 read pairs, kept 641950
#Read 3000000 read pairs, kept 764310
#Read 4000000 read pairs, kept 1068301
#Read 5000000 read pairs, kept 1342604
#Read 6000000 read pairs, kept 1342604
#Read 7000000 read pairs, kept 1342604
#Read 8000000 read pairs, kept 1342604
#Read 9000000 read pairs, kept 1560033
#Read 10000000 read pairs, kept 1632221
#Read 10247413 read pairs, kept 1761757


python3 barbell.py index
# @root  python3 barbell.py index
#Found 1761757 read pairs for a total 218457868  base reads.
#Enter something to continue:
#2018-Apr-07 00:03:24.517465 Create index pass 1: processed 0 mated reads of 1761757
#2018-Apr-07 00:03:25.140382 Create index pass 1: processed 100000 mated reads of 1761757
#2018-Apr-07 00:03:25.763464 Create index pass 1: processed 200000 mated reads of 1761757
#2018-Apr-07 00:03:26.385101 Create index pass 1: processed 300000 mated reads of 1761757
#2018-Apr-07 00:03:27.003894 Create index pass 1: processed 400000 mated reads of 1761757
#2018-Apr-07 00:03:27.631675 Create index pass 1: processed 500000 mated reads of 1761757
#2018-Apr-07 00:03:28.261696 Create index pass 1: processed 600000 mated reads of 1761757
#2018-Apr-07 00:03:28.886680 Create index pass 1: processed 700000 mated reads of 1761757
#2018-Apr-07 00:03:29.530451 Create index pass 1: processed 800000 mated reads of 1761757
#2018-Apr-07 00:03:30.211534 Create index pass 1: processed 900000 mated reads of 1761757
#2018-Apr-07 00:03:30.882939 Create index pass 1: processed 1000000 mated reads of 1761757
#2018-Apr-07 00:03:31.563711 Create index pass 1: processed 1100000 mated reads of 1761757
#2018-Apr-07 00:03:32.239343 Create index pass 1: processed 1200000 mated reads of 1761757
#2018-Apr-07 00:03:32.914836 Create index pass 1: processed 1300000 mated reads of 1761757
#2018-Apr-07 00:03:33.591396 Create index pass 1: processed 1400000 mated reads of 1761757
#2018-Apr-07 00:03:34.261294 Create index pass 1: processed 1500000 mated reads of 1761757
#2018-Apr-07 00:03:34.931328 Create index pass 1: processed 1600000 mated reads of 1761757
#2018-Apr-07 00:03:35.599457 Create index pass 1: processed 1700000 mated reads of 1761757
#***1
#touchMemory called: 0x7f28792e3100 *** 0x7f28812e3108 ***  ***  *** 134217736
#touchMemory called: 0x7f276bdc8100 *** 0x7f28792e2610 ***  ***  *** 4518421776
#18446744073709518228
#***2
#2018-Apr-07 00:03:39.319944 Create index pass 2: processed 0 mated reads of 1761757
#2018-Apr-07 00:03:41.762922 Create index pass 2: processed 100000 mated reads of 1761757
#2018-Apr-07 00:03:44.757080 Create index pass 2: processed 200000 mated reads of 1761757
#2018-Apr-07 00:03:47.675395 Create index pass 2: processed 300000 mated reads of 1761757
#2018-Apr-07 00:03:50.703677 Create index pass 2: processed 400000 mated reads of 1761757
#2018-Apr-07 00:03:53.615570 Create index pass 2: processed 500000 mated reads of 1761757
#2018-Apr-07 00:03:56.532343 Create index pass 2: processed 600000 mated reads of 1761757
#2018-Apr-07 00:03:59.785215 Create index pass 2: processed 700000 mated reads of 1761757
#2018-Apr-07 00:04:03.082018 Create index pass 2: processed 800000 mated reads of 1761757
#2018-Apr-07 00:04:06.734893 Create index pass 2: processed 900000 mated reads of 1761757
#2018-Apr-07 00:04:09.706690 Create index pass 2: processed 1000000 mated reads of 1761757
#2018-Apr-07 00:04:12.753304 Create index pass 2: processed 1100000 mated reads of 1761757
#2018-Apr-07 00:04:15.886485 Create index pass 2: processed 1200000 mated reads of 1761757
#2018-Apr-07 00:04:18.856284 Create index pass 2: processed 1300000 mated reads of 1761757
#2018-Apr-07 00:04:21.830599 Create index pass 2: processed 1400000 mated reads of 1761757
#2018-Apr-07 00:04:24.784258 Create index pass 2: processed 1500000 mated reads of 1761757
#2018-Apr-07 00:04:27.921994 Create index pass 2: processed 1600000 mated reads of 1761757
#2018-Apr-07 00:04:30.810072 Create index pass 2: processed 1700000 mated reads of 1761757


python3 barbell.py overlap
# @root  python3 barbell.py overlap
#Found 1761757 read pairs for a total 218457868  base reads.
#2018-Apr-07 00:05:35.225356 Processed 100000 mated reads, found 447223 overlapping mated reads. Average connectivity is 4.47223
#2018-Apr-07 00:05:39.089601 Processed 200000 mated reads, found 883803 overlapping mated reads. Average connectivity is 4.41901
#2018-Apr-07 00:05:42.963976 Processed 300000 mated reads, found 1318847 overlapping mated reads. Average connectivity is 4.39616
#2018-Apr-07 00:05:46.813988 Processed 400000 mated reads, found 1763350 overlapping mated reads. Average connectivity is 4.40838
#2018-Apr-07 00:05:50.638070 Processed 500000 mated reads, found 2218330 overlapping mated reads. Average connectivity is 4.43666
#2018-Apr-07 00:05:54.443472 Processed 600000 mated reads, found 2680847 overlapping mated reads. Average connectivity is 4.46808
#2018-Apr-07 00:05:58.270669 Processed 700000 mated reads, found 3157978 overlapping mated reads. Average connectivity is 4.5114
#2018-Apr-07 00:06:02.096846 Processed 800000 mated reads, found 3579812 overlapping mated reads. Average connectivity is 4.47476
#2018-Apr-07 00:06:05.949184 Processed 900000 mated reads, found 3960473 overlapping mated reads. Average connectivity is 4.40053
#2018-Apr-07 00:06:09.781793 Processed 1000000 mated reads, found 4420434 overlapping mated reads. Average connectivity is 4.42043
#2018-Apr-07 00:06:13.555486 Processed 1100000 mated reads, found 4914285 overlapping mated reads. Average connectivity is 4.46753
#2018-Apr-07 00:06:17.362842 Processed 1200000 mated reads, found 5342168 overlapping mated reads. Average connectivity is 4.45181
#2018-Apr-07 00:06:21.173592 Processed 1300000 mated reads, found 5759113 overlapping mated reads. Average connectivity is 4.43009
#2018-Apr-07 00:06:25.004258 Processed 1400000 mated reads, found 6150043 overlapping mated reads. Average connectivity is 4.39289
#2018-Apr-07 00:06:28.870470 Processed 1500000 mated reads, found 6535077 overlapping mated reads. Average connectivity is 4.35672
#2018-Apr-07 00:06:32.648542 Processed 1600000 mated reads, found 6842277 overlapping mated reads. Average connectivity is 4.27642
#2018-Apr-07 00:06:36.424170 Processed 1700000 mated reads, found 7245949 overlapping mated reads. Average connectivity is 4.26232
#Processed 1761757 mated reads, found 7497564 overlapping mated reads. Average connectivity is 4.25573



python3 barbell.py components --min-component-size 100
# @root  python3 barbell.py components --min-component-size 1000
#Found 1761757 read pairs for a total 218457868  base reads.
#Stored 169 connected components of size at least 1000 containing a total 441602 vertices.