source activate blast
makeblastdb -in /datanode03/zhaoy/QY/QY_virus/prediction/4_method_viral_prediction/QY-checkv/QY-virus_checkv.fna -dbtype nucl -out /datanode03/zhaoy/QY/QY_virus/VOTU/QY_vrius_clean
blastn -query /datanode03/zhaoy/QY/QY_virus/prediction/4_method_viral_prediction/QY-checkv/QY-virus_checkv.fna -db /datanode03/zhaoy/QY/QY_virus/VOTU/QY_vrius_clean -outfmt '6 std qlen slen' -max_target_seqs 10000 -out /datanode03/zhaoy/QY/QY_virus/VOTU/QY_vrius_clean-blastresult.tsv -num_threads 10
source /datanode03/huangxy/programs/anaconda3/bin/activate
python /datanode03/zhaoy/QY/QY_virus/QY_virus_vOTU/anicalc.py -i /datanode03/zhaoy/QY/QY_virus/VOTU/QY_vrius_clean-blastresult.tsv -o /datanode03/zhaoy/QY/QY_virus/VOTU/QY_vrius_clean_aniresult.tsv
python /datanode03/zhaoy/QY/QY_virus/QY_virus_vOTU/aniclust.py --fna /datanode03/zhaoy/QY/QY_virus/prediction/4_method_viral_prediction/QY-checkv/QY-virus_checkv.fna --ani /datanode03/zhaoy/QY/QY_virus/VOTU/QY_vrius_clean_aniresult.tsv --out /datanode03/zhaoy/QY/QY_virus/VOTU/QY_vrius_clean-cluster.tsv --min_ani 95 --min_tcov 85 --min_qcov 85
