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


python3 barbell.py assemble
# @root  python3 barbell.py assemble
#Found 1761757 read pairs for a total 218457868  base reads.
#Found 169 connected components  containing a total 441602 vertices.
#2018-Apr-07 00:09:29.025351 Assembling connected component 0 with 102882 oriented mated reads.
#Assembly will be skipped for this component because it has more than 100000 vertices.
#2018-Apr-07 00:09:29.025409 Assembling connected component 1 with 2245 oriented mated reads.
#The initial read graph has 4490 vertices and 66793 edges.
#After transitive reduction, the read graph has 4490 vertices and 6999 edges.
#Added 477 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:29.334050 Assembling connected component 2 with 2245 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:29.334094 Assembling connected component 3 with 1364 oriented mated reads.
#The initial read graph has 2728 vertices and 26574 edges.
#After transitive reduction, the read graph has 2727 vertices and 3667 edges.
#Added 274 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:29.410604 Assembling connected component 4 with 1364 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:29.410635 Assembling connected component 5 with 1022 oriented mated reads.
#The initial read graph has 2044 vertices and 18565 edges.
#After transitive reduction, the read graph has 2044 vertices and 2741 edges.
#Added 192 left/right edges.
#2018-Apr-07 00:09:29.457617 Assembling connected component 6 with 1022 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:29.457647 Assembling connected component 7 with 1569 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:29.457667 Assembling connected component 8 with 1569 oriented mated reads.
#The initial read graph has 3138 vertices and 36746 edges.
#After transitive reduction, the read graph has 3137 vertices and 4472 edges.
#Added 296 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:29.568180 Assembling connected component 9 with 2353 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:29.568220 Assembling connected component 10 with 2353 oriented mated reads.
#The initial read graph has 4706 vertices and 52996 edges.
#After transitive reduction, the read graph has 4706 vertices and 6540 edges.
#Added 505 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:29.748100 Assembling connected component 11 with 1324 oriented mated reads.
#The initial read graph has 2648 vertices and 16831 edges.
#After transitive reduction, the read graph has 2647 vertices and 3369 edges.
#Added 265 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:29.802550 Assembling connected component 12 with 1324 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:29.802582 Assembling connected component 13 with 3202 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:29.802603 Assembling connected component 14 with 3174 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:29.802621 Assembling connected component 15 with 8494 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:29.802656 Assembling connected component 16 with 4461 oriented mated reads.
#The initial read graph has 8922 vertices and 141756 edges.
#After transitive reduction, the read graph has 8921 vertices and 14763 edges.
#Added 929 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:30.773443 Assembling connected component 17 with 4461 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:30.773498 Assembling connected component 18 with 1153 oriented mated reads.
#The initial read graph has 2306 vertices and 30599 edges.
#After transitive reduction, the read graph has 2306 vertices and 3371 edges.
#Added 232 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:30.899285 Assembling connected component 19 with 1153 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:30.899363 Assembling connected component 20 with 1284 oriented mated reads.
#The initial read graph has 2568 vertices and 30516 edges.
#After transitive reduction, the read graph has 2567 vertices and 3753 edges.
#Added 277 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:31.002203 Assembling connected component 21 with 1284 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:31.002256 Assembling connected component 22 with 2168 oriented mated reads.
#The initial read graph has 4336 vertices and 62714 edges.
#After transitive reduction, the read graph has 4334 vertices and 6907 edges.
#Added 438 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:31.311541 Assembling connected component 23 with 2168 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:31.311654 Assembling connected component 24 with 1044 oriented mated reads.
#The initial read graph has 2088 vertices and 31073 edges.
#After transitive reduction, the read graph has 2088 vertices and 3313 edges.
#Added 185 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:31.406264 Assembling connected component 25 with 1044 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:31.406307 Assembling connected component 26 with 4282 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:31.406366 Assembling connected component 27 with 2046 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:31.406407 Assembling connected component 28 with 1748 oriented mated reads.
#The initial read graph has 3496 vertices and 41392 edges.
#After transitive reduction, the read graph has 3496 vertices and 4831 edges.
#Added 350 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:31.531393 Assembling connected component 29 with 1748 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:31.531438 Assembling connected component 30 with 1712 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:31.531492 Assembling connected component 31 with 1712 oriented mated reads.
#The initial read graph has 3424 vertices and 49254 edges.
#After transitive reduction, the read graph has 3423 vertices and 5043 edges.
#Added 341 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:31.717449 Assembling connected component 32 with 1219 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:31.717509 Assembling connected component 33 with 1219 oriented mated reads.
#The initial read graph has 2438 vertices and 36501 edges.
#After transitive reduction, the read graph has 2438 vertices and 4040 edges.
#Added 268 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:31.874270 Assembling connected component 34 with 7942 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:31.874338 Assembling connected component 35 with 3424 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:31.874371 Assembling connected component 36 with 1142 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:31.874399 Assembling connected component 37 with 1142 oriented mated reads.
#The initial read graph has 2284 vertices and 19098 edges.
#After transitive reduction, the read graph has 2284 vertices and 2992 edges.
#Added 218 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:31.927777 Assembling connected component 38 with 1055 oriented mated reads.
#The initial read graph has 2110 vertices and 30396 edges.
#After transitive reduction, the read graph has 2110 vertices and 3241 edges.
#Added 210 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:32.036788 Assembling connected component 39 with 1055 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:32.036827 Assembling connected component 40 with 2681 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:32.036880 Assembling connected component 41 with 2681 oriented mated reads.
#The initial read graph has 5362 vertices and 75627 edges.
#After transitive reduction, the read graph has 5361 vertices and 8081 edges.
#Added 515 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:32.358493 Assembling connected component 42 with 4748 oriented mated reads.
#The initial read graph has 9496 vertices and 155274 edges.
#After transitive reduction, the read graph has 9494 vertices and 17072 edges.
#Added 932 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:33.730055 Assembling connected component 43 with 4748 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:33.730117 Assembling connected component 44 with 3636 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:33.730141 Assembling connected component 45 with 3636 oriented mated reads.
#The initial read graph has 7272 vertices and 108318 edges.
#After transitive reduction, the read graph has 7272 vertices and 11429 edges.
#Added 736 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:34.244982 Assembling connected component 46 with 2693 oriented mated reads.
#The initial read graph has 5386 vertices and 90692 edges.
#After transitive reduction, the read graph has 5386 vertices and 10824 edges.
#Added 567 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:34.966794 Assembling connected component 47 with 2693 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:34.966836 Assembling connected component 48 with 1416 oriented mated reads.
#The initial read graph has 2832 vertices and 31216 edges.
#After transitive reduction, the read graph has 2832 vertices and 3876 edges.
#Added 286 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:35.077321 Assembling connected component 49 with 1416 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:35.077362 Assembling connected component 50 with 2710 oriented mated reads.
#The initial read graph has 5420 vertices and 71198 edges.
#After transitive reduction, the read graph has 5420 vertices and 7842 edges.
#Added 571 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:35.353170 Assembling connected component 51 with 2710 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:35.353218 Assembling connected component 52 with 1795 oriented mated reads.
#The initial read graph has 3590 vertices and 55000 edges.
#After transitive reduction, the read graph has 3590 vertices and 5483 edges.
#Added 375 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:35.609936 Assembling connected component 53 with 1795 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:35.609974 Assembling connected component 54 with 2703 oriented mated reads.
#The initial read graph has 5406 vertices and 74676 edges.
#After transitive reduction, the read graph has 5403 vertices and 8265 edges.
#Added 533 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:36.002759 Assembling connected component 55 with 2703 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:36.002803 Assembling connected component 56 with 1102 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:36.002912 Assembling connected component 57 with 1102 oriented mated reads.
#The initial read graph has 2204 vertices and 28387 edges.
#After transitive reduction, the read graph has 2204 vertices and 3023 edges.
#Added 203 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:36.097715 Assembling connected component 58 with 1971 oriented mated reads.
#The initial read graph has 3942 vertices and 57672 edges.
#After transitive reduction, the read graph has 3942 vertices and 6142 edges.
#Added 358 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:36.358974 Assembling connected component 59 with 1971 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:36.359022 Assembling connected component 60 with 1454 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:36.359061 Assembling connected component 61 with 1028 oriented mated reads.
#The initial read graph has 2056 vertices and 18826 edges.
#After transitive reduction, the read graph has 2055 vertices and 2801 edges.
#Added 227 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:36.420695 Assembling connected component 62 with 1028 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:36.420726 Assembling connected component 63 with 4413 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:36.420778 Assembling connected component 64 with 4413 oriented mated reads.
#The initial read graph has 8826 vertices and 120066 edges.
#After transitive reduction, the read graph has 8824 vertices and 13083 edges.
#Added 914 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:36.919220 Assembling connected component 65 with 1374 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:36.919266 Assembling connected component 66 with 1374 oriented mated reads.
#The initial read graph has 2748 vertices and 37953 edges.
#After transitive reduction, the read graph has 2747 vertices and 4231 edges.
#Added 279 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:37.057184 Assembling connected component 67 with 1216 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:37.057222 Assembling connected component 68 with 1216 oriented mated reads.
#The initial read graph has 2432 vertices and 33836 edges.
#After transitive reduction, the read graph has 2432 vertices and 3560 edges.
#Added 242 left/right edges.
#2018-Apr-07 00:09:37.164970 Assembling connected component 69 with 4208 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:37.165007 Assembling connected component 70 with 4208 oriented mated reads.
#The initial read graph has 8416 vertices and 125512 edges.
#After transitive reduction, the read graph has 8414 vertices and 14274 edges.
#Added 799 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:37.874928 Assembling connected component 71 with 1702 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:37.874969 Assembling connected component 72 with 1702 oriented mated reads.
#The initial read graph has 3404 vertices and 42088 edges.
#After transitive reduction, the read graph has 3403 vertices and 4820 edges.
#Added 323 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:38.028642 Assembling connected component 73 with 1250 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:38.028672 Assembling connected component 74 with 1250 oriented mated reads.
#The initial read graph has 2500 vertices and 24091 edges.
#After transitive reduction, the read graph has 2500 vertices and 3324 edges.
#Added 245 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:38.096398 Assembling connected component 75 with 1186 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:38.096462 Assembling connected component 76 with 1186 oriented mated reads.
#The initial read graph has 2372 vertices and 30722 edges.
#After transitive reduction, the read graph has 2372 vertices and 3437 edges.
#Added 230 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:38.194884 Assembling connected component 77 with 2859 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:38.194967 Assembling connected component 78 with 2859 oriented mated reads.
#The initial read graph has 5718 vertices and 79834 edges.
#After transitive reduction, the read graph has 5715 vertices and 8945 edges.
#Added 579 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:38.591675 Assembling connected component 79 with 1109 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:38.591732 Assembling connected component 80 with 1109 oriented mated reads.
#The initial read graph has 2218 vertices and 19761 edges.
#After transitive reduction, the read graph has 2218 vertices and 2914 edges.
#Added 214 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:38.649436 Assembling connected component 81 with 1091 oriented mated reads.
#The initial read graph has 2182 vertices and 37479 edges.
#After transitive reduction, the read graph has 2181 vertices and 4617 edges.
#Added 205 left/right edges.
#2018-Apr-07 00:09:38.876447 Assembling connected component 82 with 1091 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:38.876499 Assembling connected component 83 with 1621 oriented mated reads.
#The initial read graph has 3242 vertices and 48753 edges.
#After transitive reduction, the read graph has 3242 vertices and 5126 edges.
#Added 301 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:39.072606 Assembling connected component 84 with 1621 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:39.072660 Assembling connected component 85 with 3508 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:39.072693 Assembling connected component 86 with 1220 oriented mated reads.
#The initial read graph has 2440 vertices and 29590 edges.
#After transitive reduction, the read graph has 2440 vertices and 3463 edges.
#Added 245 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:39.175257 Assembling connected component 87 with 1220 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:39.175304 Assembling connected component 88 with 1842 oriented mated reads.
#The initial read graph has 3684 vertices and 39684 edges.
#After transitive reduction, the read graph has 3684 vertices and 5126 edges.
#Added 354 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:39.300382 Assembling connected component 89 with 1842 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:39.300424 Assembling connected component 90 with 2237 oriented mated reads.
#The initial read graph has 4474 vertices and 60289 edges.
#After transitive reduction, the read graph has 4472 vertices and 6461 edges.
#Added 436 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:39.529681 Assembling connected component 91 with 2237 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:39.529737 Assembling connected component 92 with 4240 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:39.529758 Assembling connected component 93 with 4240 oriented mated reads.
#The initial read graph has 8480 vertices and 134700 edges.
#After transitive reduction, the read graph has 8480 vertices and 15984 edges.
#Added 849 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:40.655443 Assembling connected component 94 with 2150 oriented mated reads.
#The initial read graph has 4300 vertices and 69110 edges.
#After transitive reduction, the read graph has 4299 vertices and 7184 edges.
#Added 433 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:41.065809 Assembling connected component 95 with 2150 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:41.065848 Assembling connected component 96 with 2340 oriented mated reads.
#The initial read graph has 4680 vertices and 69412 edges.
#After transitive reduction, the read graph has 4680 vertices and 7509 edges.
#Added 453 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:41.392085 Assembling connected component 97 with 2340 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:41.392130 Assembling connected component 98 with 1131 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:41.392151 Assembling connected component 99 with 1131 oriented mated reads.
#The initial read graph has 2262 vertices and 35946 edges.
#After transitive reduction, the read graph has 2262 vertices and 3653 edges.
#Added 231 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:41.524550 Assembling connected component 100 with 1320 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:41.524579 Assembling connected component 101 with 1320 oriented mated reads.
#The initial read graph has 2640 vertices and 36642 edges.
#After transitive reduction, the read graph has 2640 vertices and 3986 edges.
#Added 264 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:41.653588 Assembling connected component 102 with 1145 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:41.653620 Assembling connected component 103 with 1145 oriented mated reads.
#The initial read graph has 2290 vertices and 25021 edges.
#After transitive reduction, the read graph has 2289 vertices and 3119 edges.
#Added 234 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:41.730775 Assembling connected component 104 with 4208 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:41.730814 Assembling connected component 105 with 1072 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:41.730836 Assembling connected component 106 with 1072 oriented mated reads.
#The initial read graph has 2144 vertices and 29631 edges.
#After transitive reduction, the read graph has 2143 vertices and 3168 edges.
#Added 229 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:41.833179 Assembling connected component 107 with 1973 oriented mated reads.
#The initial read graph has 3946 vertices and 53773 edges.
#After transitive reduction, the read graph has 3945 vertices and 6016 edges.
#Added 387 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:42.088053 Assembling connected component 108 with 1973 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:42.088119 Assembling connected component 109 with 1657 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:42.088184 Assembling connected component 110 with 1657 oriented mated reads.
#The initial read graph has 3314 vertices and 53659 edges.
#After transitive reduction, the read graph has 3314 vertices and 5698 edges.
#Added 307 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:42.406424 Assembling connected component 111 with 1063 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:42.406463 Assembling connected component 112 with 1063 oriented mated reads.
#The initial read graph has 2126 vertices and 23210 edges.
#After transitive reduction, the read graph has 2126 vertices and 2971 edges.
#Added 200 left/right edges.
#2018-Apr-07 00:09:42.475555 Assembling connected component 113 with 1105 oriented mated reads.
#The initial read graph has 2210 vertices and 28885 edges.
#After transitive reduction, the read graph has 2210 vertices and 3172 edges.
#Added 229 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:42.569603 Assembling connected component 114 with 1105 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:42.569641 Assembling connected component 115 with 1073 oriented mated reads.
#The initial read graph has 2146 vertices and 30077 edges.
#After transitive reduction, the read graph has 2146 vertices and 3413 edges.
#Added 216 left/right edges.
#2018-Apr-07 00:09:42.680325 Assembling connected component 116 with 1073 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:42.680363 Assembling connected component 117 with 1062 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:42.680415 Assembling connected component 118 with 1368 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:42.680432 Assembling connected component 119 with 2318 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:42.680468 Assembling connected component 120 with 2318 oriented mated reads.
#The initial read graph has 4636 vertices and 15994 edges.
#After transitive reduction, the read graph has 4634 vertices and 7007 edges.
#Added 403 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:42.817458 Assembling connected component 121 with 2160 oriented mated reads.
#The initial read graph has 4320 vertices and 70789 edges.
#After transitive reduction, the read graph has 4320 vertices and 7269 edges.
#Added 446 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:43.175610 Assembling connected component 122 with 2160 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:43.175652 Assembling connected component 123 with 1995 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:43.175665 Assembling connected component 124 with 1995 oriented mated reads.
#The initial read graph has 3990 vertices and 46715 edges.
#After transitive reduction, the read graph has 3989 vertices and 5665 edges.
#Added 391 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:43.348596 Assembling connected component 125 with 1783 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:43.348637 Assembling connected component 126 with 1783 oriented mated reads.
#The initial read graph has 3566 vertices and 54763 edges.
#After transitive reduction, the read graph has 3566 vertices and 5689 edges.
#Added 356 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:43.601537 Assembling connected component 127 with 1155 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:43.601587 Assembling connected component 128 with 1155 oriented mated reads.
#The initial read graph has 2310 vertices and 36241 edges.
#After transitive reduction, the read graph has 2310 vertices and 3883 edges.
#Added 234 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:43.758827 Assembling connected component 129 with 2020 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:43.758859 Assembling connected component 130 with 2020 oriented mated reads.
#The initial read graph has 4040 vertices and 63741 edges.
#After transitive reduction, the read graph has 4039 vertices and 7015 edges.
#Added 390 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:44.132708 Assembling connected component 131 with 2580 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:44.132746 Assembling connected component 132 with 1198 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:44.132759 Assembling connected component 133 with 1198 oriented mated reads.
#The initial read graph has 2396 vertices and 37767 edges.
#After transitive reduction, the read graph has 2395 vertices and 4000 edges.
#Added 215 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:44.285592 Assembling connected component 134 with 1511 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:44.285623 Assembling connected component 135 with 1511 oriented mated reads.
#The initial read graph has 3022 vertices and 42656 edges.
#After transitive reduction, the read graph has 3022 vertices and 4630 edges.
#Added 305 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:44.469232 Assembling connected component 136 with 1016 oriented mated reads.
#The initial read graph has 2032 vertices and 28713 edges.
#After transitive reduction, the read graph has 2032 vertices and 3017 edges.
#Added 203 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:44.568375 Assembling connected component 137 with 1016 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:44.568402 Assembling connected component 138 with 1211 oriented mated reads.
#The initial read graph has 2422 vertices and 20420 edges.
#After transitive reduction, the read graph has 2422 vertices and 3243 edges.
#Added 224 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:44.623392 Assembling connected component 139 with 1211 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:44.623420 Assembling connected component 140 with 1049 oriented mated reads.
#The initial read graph has 2098 vertices and 16146 edges.
#After transitive reduction, the read graph has 2098 vertices and 2736 edges.
#Added 207 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:44.666837 Assembling connected component 141 with 1049 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:44.666864 Assembling connected component 142 with 2234 oriented mated reads.
#The initial read graph has 4468 vertices and 73909 edges.
#After transitive reduction, the read graph has 4468 vertices and 7758 edges.
#Added 432 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:45.077895 Assembling connected component 143 with 2234 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:45.077943 Assembling connected component 144 with 1139 oriented mated reads.
#The initial read graph has 2278 vertices and 21658 edges.
#After transitive reduction, the read graph has 2277 vertices and 3142 edges.
#Added 240 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:45.149458 Assembling connected component 145 with 1139 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:45.149484 Assembling connected component 146 with 2260 oriented mated reads.
#The initial read graph has 4520 vertices and 40433 edges.
#After transitive reduction, the read graph has 4520 vertices and 6043 edges.
#Added 427 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:45.274499 Assembling connected component 147 with 2260 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:45.274607 Assembling connected component 148 with 1522 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:45.274626 Assembling connected component 149 with 1522 oriented mated reads.
#The initial read graph has 3044 vertices and 49256 edges.
#After transitive reduction, the read graph has 3044 vertices and 5055 edges.
#Added 309 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:45.509409 Assembling connected component 150 with 1874 oriented mated reads.
#This connected component is self-complementary. Assembly will be skipped.
#2018-Apr-07 00:09:45.509448 Assembling connected component 151 with 1150 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:45.509466 Assembling connected component 152 with 1150 oriented mated reads.
#The initial read graph has 2300 vertices and 30112 edges.
#After transitive reduction, the read graph has 2300 vertices and 3506 edges.
#Added 231 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:45.628633 Assembling connected component 153 with 3272 oriented mated reads.
#The initial read graph has 6544 vertices and 106744 edges.
#After transitive reduction, the read graph has 6542 vertices and 11536 edges.
#Added 717 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:46.405490 Assembling connected component 154 with 3272 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:46.405537 Assembling connected component 155 with 1169 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:46.405555 Assembling connected component 156 with 1169 oriented mated reads.
#The initial read graph has 2338 vertices and 39152 edges.
#After transitive reduction, the read graph has 2338 vertices and 4478 edges.
#Added 228 left/right edges.
#2018-Apr-07 00:09:46.606497 Assembling connected component 157 with 1111 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:46.606536 Assembling connected component 158 with 1111 oriented mated reads.
#The initial read graph has 2222 vertices and 18367 edges.
#After transitive reduction, the read graph has 2222 vertices and 2930 edges.
#Added 212 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:46.656573 Assembling connected component 159 with 3506 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:46.656656 Assembling connected component 160 with 3506 oriented mated reads.
#The initial read graph has 7012 vertices and 102743 edges.
#After transitive reduction, the read graph has 7011 vertices and 11257 edges.
#Added 688 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:47.188675 Assembling connected component 161 with 2211 oriented mated reads.
#The initial read graph has 4422 vertices and 53105 edges.
#After transitive reduction, the read graph has 4422 vertices and 6202 edges.
#Added 445 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:47.373765 Assembling connected component 162 with 2211 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:47.373797 Assembling connected component 163 with 4441 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:47.373818 Assembling connected component 164 with 4441 oriented mated reads.
#The initial read graph has 8882 vertices and 143665 edges.
#After transitive reduction, the read graph has 8881 vertices and 15866 edges.
#Added 885 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:48.400024 Assembling connected component 165 with 1109 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:48.400064 Assembling connected component 166 with 1109 oriented mated reads.
#The initial read graph has 2218 vertices and 26834 edges.
#After transitive reduction, the read graph has 2217 vertices and 3143 edges.
#Added 209 left/right edges.
#The read graph has cycles.
#2018-Apr-07 00:09:48.492692 Assembling connected component 167 with 1568 oriented mated reads.
#Assembly for this connected component will be skipped. The corresponding complementary component will be assembled.
#2018-Apr-07 00:09:48.492721 Assembling connected component 168 with 1568 oriented mated reads.
#The initial read graph has 3136 vertices and 21875 edges.
#After transitive reduction, the read graph has 3135 vertices and 4014 edges.
#Added 317 left/right edges.
