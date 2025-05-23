source activate /datanode03/zhangxf/mambaforge/envs/coverm_0.6.1
coverm genome --bam-files /datanode03/zhaoy/host_coverm/*.bam.sorted --genome-fasta-directory /datanode03/zhaoy/dRep99/dereplicated_genomes/ -x fa --output-file qy_mean_output-genome.tsv -m mean -t 4
coverm genome --bam-files /datanode03/zhaoy/host_coverm/*.bam.sorted --genome-fasta-directory /datanode03/zhaoy/dRep99/dereplicated_genomes/ -x fa --output-file qy_TPM_output_genome.tsv -m tpm -t 4

