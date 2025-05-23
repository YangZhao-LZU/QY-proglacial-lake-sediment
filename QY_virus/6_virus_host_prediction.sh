#iPHoP
source activate /datanode03/zhaoy/.conda/envs/gtdbtk/
export GTDBTK_DATA_PATH=/datanode03/zhaoy/.conda/envs/gtdbtk/share/gtdbtk-2.1.0/db
gtdbtk de_novo_wf --genome_dir /datanode03/zhaoy/QY_host/QY_met_bat_basalt_mags/ --bacteria --outgroup_taxon p__Patescibacteria --out_dir /datanode03/zhaoy/QY/QY_iphop/qy_MAGs_GTDB-tk_results --cpus 32 --force --extension fa
gtdbtk de_novo_wf --genome_dir /datanode03/zhaoy/QY_host/QY_met_bat_basalt_mags/ --archaea --outgroup_taxon p__Altiarchaeota --out_dir /datanode03/zhaoy/QY/QY_iphop/qy_MAGs_GTDB-tk_results --cpus 32 --force --extension fa
conda deactivate
source activate /datanode03/zhaoy/.conda/envs/iphop_env/
iphop add_to_db --fna_dir /datanode03/zhaoy/QY_host/QY_met_bat_basalt_drep/dRep99/dereplicated_genomes/ --gtdb_dir /datanode03/zhaoy/QY/QY_iphop/qy_MAGs_GTDB-tk_results --out_dir /datanode03/zhaoy/QY/QY_iphop/qy_MAGs_GTDB-tk_results/iphop/qy_Iphop_db --db_dir /datanode03/zhaoy/database/iphop_db/Aug_2023_pub_rw/ --num_threads 20

