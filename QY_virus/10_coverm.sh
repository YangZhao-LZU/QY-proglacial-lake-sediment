source activate /datanode03/zhangxf/mambaforge/envs/coverm_0.6.1
cd /datanode03/zhaoy/QY/QY_virus/coverm/
#count
coverm contig --methods count --bam-files /datanode03/zhaoy/QY/QY_virus/coverm/*.bam.sorted --output-file /datanode03/zhaoy/QY/QY_virus/coverm/qy_allvTOU_count-comverm.txt -t 50 

#mean; average depth
coverm contig --methods mean --bam-files /datanode03/zhaoy/QY/QY_virus/coverm/*.bam.sorted --min-covered-fraction 10 --output-file /datanode03/zhaoy/QY/QY_virus/coverm/qy_allvTOU_mean-comverm.txt -t 50 

#rpkm
coverm contig --methods rpkm --bam-files /datanode03/zhaoy/QY/QY_virus/coverm/*.bam.sorted --min-covered-fraction 10 --output-file /datanode03/zhaoy/QY/QY_virus/coverm/qy_allvTOU_rpkm-comverm.txt -t 50 

#TPM
coverm contig --methods tpm --bam-files /datanode03/zhaoy/QY/QY_virus_coverm/qy_virus_bam/*.bam.sorted --min-covered-fraction 10 --output-file /datanode03/zhaoy/QY/QY_virus_coverm/qy_virus_coverm/qy_allvTOU_TPM-comverm10.txt

#metabat average depth
coverm contig --methods metabat --bam-files /datanode03/zhaoy/QY/QY_virus/coverm/*.bam.sorted --min-covered-fraction 0 --output-file /datanode03/zhaoy/QY/QY_virus/coverm/qy_allvTOU_metabat-comverm.txt -t 50 