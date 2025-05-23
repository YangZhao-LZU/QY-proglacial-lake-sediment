#BASALT
source activate /datanode03/zhaoy/.conda/envs/basalt/
cd /datanode03/zhaoy/QY/QYJanS1_megahit
BASALT -a QYJanS1.fa -s QYJanS1_R1_trimmed.fq.gz ,QYJanS1_R2_trimmed.fq.gz -t 30 -m 200
cd /datanode03/zhaoy/QY/QYJanS7_megahit
BASALT -a QYJanS7.fa -s QYJanS7_R1_trimmed.fq.gz ,QYJanS7_R2_trimmed.fq.gz -t 30 -m 200
cd /datanode03/zhaoy/QY/QYJanS9_megahit
BASALT -a QYJanS9.fa -s QYJanS9_R1_trimmed.fq.gz ,QYJanS9_R2_trimmed.fq.gz -t 30 -m 200
cd /datanode03/zhaoy/QY/QYMayS1_megahit
BASALT -a QYMayS1.fa -s QYMayS1_R1_trimmed.fq.gz ,QYMayS1_R2_trimmed.fq.gz -t 30 -m 200
cd /datanode03/zhaoy/QY/QYMayS7_megahit
BASALT -a QYMayS7.fa -s QYMayS7_R1_trimmed.fq.gz ,QYMayS7_R2_trimmed.fq.gz -t 30 -m 200
cd /datanode03/zhaoy/QY/QYMayS9_megahit
BASALT -a QYMayS9.fa -s QYMayS9_R1_trimmed.fq.gz ,QYMayS9_R2_trimmed.fq.gz -t 30 -m 200

#MetaBAT2
source activate /data01nfs/user/liupf/miniconda3/envs/metabat2/
metabat2 -m 1500 -t 8 -i /datanode03/zhaoy/QY/QYJanS1_megahit/QYJanS1.fa -a /datanode03/zhaoy/QY/mapping/QYJanS1/QYJanS1depth.txt -o  /datanode03/zhaoy/QY/metabat/QYJanS1/QYJanS1.metabat_2
metabat2 -m 1500 -t 8 -i /datanode03/zhaoy/QY/QYJanS7_megahit/QYJanS7.fa -a /datanode03/zhaoy/QY/mapping/QYJanS7/QYJanS1depth.txt -o  /datanode03/zhaoy/QY/metabat/QYJanS7/QYJanS7.metabat_2
metabat2 -m 1500 -t 8 -i /datanode03/zhaoy/QY/QYJanS9_megahit/QYJanS9.fa -a /datanode03/zhaoy/QY/mapping/QYJanS9/QYJanS1depth.txt -o  /datanode03/zhaoy/QY/metabat/QYJanS9/QYJanS9.metabat_2
metabat2 -m 1500 -t 8 -i /datanode03/zhaoy/QY/QYMayS1_megahit/QYMayS1.fa -a /datanode03/zhaoy/QY/mapping/QYMayS1/QYJanS1depth.txt -o  /datanode03/zhaoy/QY/metabat/QYMayS1/QYMayS1.metabat_2
metabat2 -m 1500 -t 8 -i /datanode03/zhaoy/QY/QYMayS1_megahit/QYMayS7.fa -a /datanode03/zhaoy/QY/mapping/QYMayS7/QYJanS1depth.txt -o  /datanode03/zhaoy/QY/metabat/QYMayS7/QYMayS7.metabat_2
metabat2 -m 1500 -t 8 -i /datanode03/zhaoy/QY/QYMayS1_megahit/QYMayS9.fa -a /datanode03/zhaoy/QY/mapping/QYMayS9/QYJanS1depth.txt -o  /datanode03/zhaoy/QY/metabat/QYMayS9/QYMayS9.metabat_2

#MaxBin2
source activate /datanode03/zhangxf/anaconda3/envs/maxbin/
for id in *depth.txt; do awk '{print $1, $3}' $id > "${id%.txt}"_maxbin2.txt; done
run_MaxBin.pl -contig /datanode03/zhaoy/QY/QYJanS1_megahit/QYJanS1.fa -abund /datanode03/zhaoy/QY/mapping/QYJanS1/QYJanS1depth_maxbin2.txt -min_contig_length 1500 -thread 8 -out /datanode03/zhaoy/QY/maxbin2/QYJanS1/QYJanS1.maxbin_2
run_MaxBin.pl -contig /datanode03/zhaoy/QY/QYJanS1_megahit/QYJanS7.fa -abund /datanode03/zhaoy/QY/mapping/QYJanS1/QYJanS7depth_maxbin2.txt -min_contig_length 1500 -thread 8 -out /datanode03/zhaoy/QY/maxbin2/QYJanS7/QYJanS7.maxbin_2
run_MaxBin.pl -contig /datanode03/zhaoy/QY/QYJanS1_megahit/QYJanS9.fa -abund /datanode03/zhaoy/QY/mapping/QYJanS1/QYJanS9depth_maxbin2.txt -min_contig_length 1500 -thread 8 -out /datanode03/zhaoy/QY/maxbin2/QYJanS9/QYJanS9.maxbin_2
run_MaxBin.pl -contig /datanode03/zhaoy/QY/QYJanS1_megahit/QYMayS1.fa -abund /datanode03/zhaoy/QY/mapping/QYJanS1/QYMayS1depth_maxbin2.txt -min_contig_length 1500 -thread 8 -out /datanode03/zhaoy/QY/maxbin2/QYMayS1/QYMayS1.maxbin_2
run_MaxBin.pl -contig /datanode03/zhaoy/QY/QYJanS1_megahit/QYMayS7.fa -abund /datanode03/zhaoy/QY/mapping/QYJanS1/QYMayS7depth_maxbin2.txt -min_contig_length 1500 -thread 8 -out /datanode03/zhaoy/QY/maxbin2/QYMayS7/QYMayS7.maxbin_2
run_MaxBin.pl -contig /datanode03/zhaoy/QY/QYJanS1_megahit/QYMayS9.fa -abund /datanode03/zhaoy/QY/mapping/QYJanS1/QYMayS9depth_maxbin2.txt -min_contig_length 1500 -thread 8 -out /datanode03/zhaoy/QY/maxbin2/QYMayS9/QYMayS9.maxbin_2

#VAMB
conda activate /datanode02/zhangzh/.conda/envs/vamb/
vamb --outdir /datanode03/zhaoy/QY/vamb/QYJanS1 --fasta /datanode03/zhaoy/QY/QYJanS1_megahit/QYJanS1.fa --jgi /datanode03/zhaoy/QY/mapping/QYJanS1/QYJanS1depth.txt -p 10 --minfasta 500000
vamb --outdir /datanode03/zhaoy/QY/vamb/QYJanS7 --fasta /datanode03/zhaoy/QY/QYJanS1_megahit/QYJanS7.fa --jgi /datanode03/zhaoy/QY/mapping/QYJanS7/QYJanS7depth.txt -p 10 --minfasta 500000
vamb --outdir /datanode03/zhaoy/QY/vamb/QYJanS9 --fasta /datanode03/zhaoy/QY/QYJanS1_megahit/QYJanS9.fa --jgi /datanode03/zhaoy/QY/mapping/QYJanS9/QYJanS9depth.txt -p 10 --minfasta 500000
vamb --outdir /datanode03/zhaoy/QY/vamb/QYMayS1 --fasta /datanode03/zhaoy/QY/QYJanS1_megahit/QYMayS1.fa --jgi /datanode03/zhaoy/QY/mapping/QYMayS1/QYMayS1depth.txt -p 10 --minfasta 500000
vamb --outdir /datanode03/zhaoy/QY/vamb/QYMayS7 --fasta /datanode03/zhaoy/QY/QYJanS1_megahit/QYMayS7.fa --jgi /datanode03/zhaoy/QY/mapping/QYMayS7/QYMayS7depth.txt -p 10 --minfasta 500000
vamb --outdir /datanode03/zhaoy/QY/vamb/QYMayS9 --fasta /datanode03/zhaoy/QY/QYJanS1_megahit/QYMayS9.fa --jgi /datanode03/zhaoy/QY/mapping/QYMayS9/QYMayS9depth.txt -p 10 --minfasta 500000
