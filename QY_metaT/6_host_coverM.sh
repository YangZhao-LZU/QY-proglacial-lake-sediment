source activate /datanode03/zhangxf/mambaforge/envs/coverm_0.6.1
coverm genome --bam-files /datanode03/zhaoy/QY_tran/QY_metaT-MAGs-coverm/*.bam.sorted --genome-fasta-directory /datanode03/zhaoy/QY_host/QY_met_bat_basalt_drep/dRep99/dereplicated_genomes/ -x fa -o /datanode03/zhaoy/QY_tran/QY_metaT-MAGs-coverm/QY_metaT_MAGs_coverm/qy_mean_output-genome.tsv -m mean -t 20
coverm genome --bam-files /datanode03/zhaoy/QY_tran/QY_metaT-MAGs-coverm/*.bam.sorted --genome-fasta-directory /datanode03/zhaoy/QY_host/QY_met_bat_basalt_drep/dRep99/dereplicated_genomes/ -x fa -o /datanode03/zhaoy/QY_tran/QY_metaT-MAGs-coverm/QY_metaT_MAGs_coverm/qy_TPM_output_genome.tsv -m tpm -t 20

