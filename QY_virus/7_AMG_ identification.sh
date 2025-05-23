#DRAM
source activate  /data01nfs/user/huangxy/programs/anaconda3/envs/vs2
virsorter run --seqname-suffix-off --provirus-off  --keep-original-seq --viral-gene-enrich-off -w /datanode03/zhaoy/QY/QY_virus/virus_dramv/virsorter_prepare -i /datanode03/zhaoy/QY/QY_virus/prediction/4_method_viral_prediction/QY_virus-virus_checkv.fna --prep-for-dramv --min-length 0 --min-score 0  -j 60 all 
conda deactivate
conda activate /datanode03/zhangxf/anaconda3/envs/DRAM
DRAM-v.py annotate -i /datanode03/zhaoy/QY/QY_virus/virus_dramv/virsorter_prepare/for-dramv/final-viral-combined-for-dramv.fa -v /datanode03/zhaoy/QY/QY_virus/virus_dramv/virsorter_prepare/for-dramv/viral-affi-contigs-for-dramv.tab -o /datanode03/zhaoy/QY/QY_virus/virus_dramv/virsorter_prepare/DRAMv --threads 60