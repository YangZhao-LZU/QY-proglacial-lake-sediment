source activate /datanode03/zhaoy/.conda/envs/gtdbtk2.4.0/
export GTDBTK_DATA_PATH=/datanode03/zhaoy/.conda/envs/gtdbtk2.4.0/share/gtdbtk-2.4.0/db/
gtdbtk classify_wf -x fasta --prefix gtdbtk --genome_dir /datanode03/zhaoy/QY_host/QY_met_bat_basalt_mags/ --out_dir /datanode03/zhaoy/QY_host/QY_met_bat_basalt_gtdbtk/ --skip_ani_screen --min_perc_aa 30 --cpus 20