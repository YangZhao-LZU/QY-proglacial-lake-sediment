source /datanode03/songq/mambaforge/bin/activate
conda activate sortmerna
sortmerna \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5.8s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-16s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-16s-id90.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-18s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-28s-id98.fasta \
    --fastx -a 15 -v --log \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYJanS1_R1_trimmed.fq.gz \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYJanS1_R2_trimmed.fq.gz \
    --aligned /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYJanS1.align \
    --other /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYJanS1.unalign \
    --paired_in --out2 --workdir /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/


sortmerna \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5.8s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-16s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-16s-id90.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-18s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-28s-id98.fasta \
    --fastx -a 15 -v --log \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYJanS7_R1_trimmed.fq.gz \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYJanS7_R2_trimmed.fq.gz \
    --aligned /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYJanS7.align \
    --other /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYJanS7.unalign \
    --paired_in --out2 --workdir /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/


sortmerna \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5.8s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-16s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-16s-id90.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-18s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-28s-id98.fasta \
    --fastx -a 15 -v --log \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYJanS9_R1_trimmed.fq.gz \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYJanS9_R2_trimmed.fq.gz \
    --aligned /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYJanS9.align \
    --other /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYJanS9.unalign \
    --paired_in --out2 --workdir /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/


sortmerna \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5.8s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-16s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-16s-id90.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-18s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-28s-id98.fasta \
    --fastx -a 15 -v --log \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYMayS1_R1_trimmed.fq.gz \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYMayS1_R2_trimmed.fq.gz \
    --aligned /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYMayS1.align \
    --other /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYMayS1.unalign \
    --paired_in --out2 --workdir /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/


sortmerna \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5.8s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-16s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-16s-id90.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-18s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-28s-id98.fasta \
    --fastx -a 15 -v --log \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYMayS7_R1_trimmed.fq.gz \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYMayS7_R2_trimmed.fq.gz \
    --aligned /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYMayS7.align \
    --other /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYMayS7.unalign \
    --paired_in --out2 --workdir /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/


sortmerna \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5.8s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/rfam-5s-database-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-16s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-arc-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-16s-id90.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-bac-23s-id98.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-18s-id95.fasta \
    --ref /datanode03/liupf/software_lpf/sortmeRNA_db/silva-euk-28s-id98.fasta \
    --fastx -a 15 -v --log \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYMayS9_R1_trimmed.fq.gz \
    --reads /data02nfs/Project/chihf/QY_metatrans/QYMayS9_R2_trimmed.fq.gz \
    --aligned /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYMayS9.align \
    --other /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/QYMayS9.unalign \
    --paired_in --out2 --workdir /datanode03/zhaoy/QY/QY_tran/sortmeRNA_out/