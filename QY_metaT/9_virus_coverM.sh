source activate /datanode03/zhangxf/mambaforge/envs/coverm_0.6.1
#count
coverm contig --methods count --bam-files /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/*.bam.sorted --output-file /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/qy_metaT_count-comverm.txt -t 50 

#mean; average depth
coverm contig --methods mean --bam-files /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/*.bam.sorted --min-covered-fraction 10 --output-file /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/qy_metaT_mean-comverm.txt -t 50 

#rpkm
coverm contig --methods rpkm --bam-files /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/*.bam.sorted --min-covered-fraction 10 --output-file /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/qy_metaT_rpkm-comverm.txt -t 50 

#TPM
coverm contig --methods tpm --bam-files /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/*.bam.sorted --min-covered-fraction 10 --output-file /datanode03/zhaoy/QY/QY_tran/QY_virus_coverm/qy_metaT_TPM-comverm10.txt


