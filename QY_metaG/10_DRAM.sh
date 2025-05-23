conda activate /datanode03/zhangxf/anaconda3/envs/DRAM/
cd /datanode03/zhaoy/QY_host/QY_met_bat_basalt_drep/dRep99/dereplicated_genomes/
while read line; do DRAM.py annotate -i ./"${line}" -o /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/dram_"${line%.*}" --threads 20 --min_contig_size 1500 --low_mem_mode --use_uniref  --use_vogdb; done < list.txt &
cd /datanode03/fengml/DRAM/
touch qy_annotations.tsv
cat /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/dram*/annotations.tsv >> /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/qy_annotations.tsv
head -1 /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/qy_annotations.tsv > /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/head_dram_annotation.tsv
grep -v 'strandedness' /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/qy_annotations.tsv > /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/qy_annotations_nh.tsv 
cat /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/head_dram_annotation.tsv  /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/qy_annotations_nh.tsv > /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/qy_annotations_wh.tsv 
DRAM.py distill -i /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/qy_annotations_wh.tsv  -o /datanode03/zhaoy/QY_host/QY_met_bat_basalt_dram/dram_genome_summaries
