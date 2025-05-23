#geNomad
conda activate genomad
genomad end-to-end --min-score 0.8 --threads 30 --cleanup /datanode03/zhaoy/QY/QY_virus/VOTU/QY-virus_votu.fasta /datanode03/zhaoy/QY/QY_virus/taxonomy/genomad_result/QY_genomad_result /datanode03/zhaoy/database/genomad_db/; done

#vConTACT2
conda activate prodigal
prodigal -i /datanode03/zhaoy/QY/QY_virus/VOTU/QY-virus_votu.fasta -a /datanode03/zhaoy/QY/QY_virus/VOTU/prodigal/QY_vOTU.faa -p meta
conda deactivate
conda activate vContact2 
vcontact2 --raw-proteins /datanode03/zhaoy/QY/QY_virus/VOTU/prodigal/QY_vOTU.faa --rel-mode Diamond --proteins-fp /datanode03/zhaoy/QY/QY_virus/VOTU/prodigal/QY_vcontact2.csv --db 'ProkaryoticViralRefSeq201-Merged' --pcs-mode MCL --vcs-mode ClusterONE --c1-bin /datanode03/zhangxf/programs/mambaforge/envs/vContact2/MAVERICLab-vcontact2-aaa065683c99/bin/cluster_one-1.0.jar --output-dir /datanode03/zhaoy/QY/QY_virus/taxonomy/vcontact2_result/QY_vOTU_vc2  -t 40

#PhaGCN2
source activate /datanode03/zhaoy/.conda/envs/phagcn2/
export MKL_SERVICE_FORCE_INTEL=1
cd /datanode03/zhaoy/blast/virus_taxonomy/PhaGCN2_result/PhaGCN2.0-main/
python run_Speed_up.py --contigs /datanode03/zhaoy/QY/QY_virus/VOTU/QY-virus_votu.fasta --len 5000

#VPF-Class
cd /datanode03/huangxy/programs/vpf-tools/ ||exit
/home/dell/huangxingyu/vpf-class-x86_64-linux@dd88a543f28eb339cf0dcb89f34479c84b3a8056 --data-index /home/dell/huangxingyu/programs/vpf-tools/vpf-class-data/index.yaml  -i /datanode03/zhaoy/QY/QY_virus/VOTU/QY-virus_votu.fasta -o /datanode03/zhaoy/QY/QY_virus/taxonomy/vpfclass_result/QY_vpfclass_result

#BLASTn
source /datanode03/huangxy/programs/anaconda3/bin/activate
nohup blastn -task megablast -query /datanode03/zhaoy/QY/QY_virus/prediction/4_method_viral_prediction/QY-checkv/QY-virus_checkv.fna  -db /data01nfs/biodatabase/IMG_VR_v4/IMG_VR_all/IMGVR_all_nucleotides -num_threads 10 -out /datanode03/zhaoy/QY/QY_virus/taxonomy/blast_result/QY-2IMGVR.tsv -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qlen slen" -perc_identity 90 -qcov_hsp_perc 75 &

#ViralRecall
conda activate vibrant
python /datanode03/zhaoy/QY/QY_virus/viralrecall.py -i /datanode03/zhaoy/QY/QY_virus/VOTU/QY-virus_votu.fasta -p /datanode03/zhaoy/QY/QY_virus_taxonomy/viralrecall_result/QY_vrius-viralrecall.faa -t 10 -f 
