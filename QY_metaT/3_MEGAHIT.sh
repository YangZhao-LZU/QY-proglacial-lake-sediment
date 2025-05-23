
source activate /data01nfs/user/liupf/miniconda3/envs/megahit/

megahit -1 /data02nfs/Project/chihf/QY_metatrans/QYJanS1_R1_trimmed.fq.gz -2 /data02nfs/Project/chihf/QY_metatrans/QYJanS1_R2_trimmed.fq.gz  --out-prefix  QYJanS1_megahit  -t 60  --out-dir /datanode03/zhaoy/QY/QY_tran/QYJanS1_megahit
megahit -1 /data02nfs/Project/chihf/QY_metatrans/QYJanS7_R1_trimmed.fq.gz -2 /data02nfs/Project/chihf/QY_metatrans/QYJanS7_R2_trimmed.fq.gz  --out-prefix  QYJanS7_megahit  -t 60  --out-dir /datanode03/zhaoy/QY/QY_tran/QYJanS7_megahit
megahit -1 /data02nfs/Project/chihf/QY_metatrans/QYJanS9_R1_trimmed.fq.gz -2 /data02nfs/Project/chihf/QY_metatrans/QYJanS9_R2_trimmed.fq.gz  --out-prefix  QYJanS9_megahit  -t 60  --out-dir /datanode03/zhaoy/QY/QY_tran/QYJanS9_megahit
megahit -1 /data02nfs/Project/chihf/QY_metatrans/QYMayS1_R1_trimmed.fq.gz -2 /data02nfs/Project/chihf/QY_metatrans/QYMayS1_R2_trimmed.fq.gz  --out-prefix  QYMayS1_megahit  -t 60  --out-dir /datanode03/zhaoy/QY/QY_tran/QYMayS1_megahit
megahit -1 /data02nfs/Project/chihf/QY_metatrans/QYMayS7_R1_trimmed.fq.gz -2 /data02nfs/Project/chihf/QY_metatrans/QYMayS7_R2_trimmed.fq.gz  --out-prefix  QYMayS7_megahit  -t 60  --out-dir /datanode03/zhaoy/QY/QY_tran/QYMayS7_megahit
megahit -1 /data02nfs/Project/chihf/QY_metatrans/QYMayS9_R1_trimmed.fq.gz -2 /data02nfs/Project/chihf/QY_metatrans/QYMayS9_R2_trimmed.fq.gz  --out-prefix  QYMayS9_megahit  -t 60  --out-dir /datanode03/zhaoy/QY/QY_tran/QYMayS9_megahit




