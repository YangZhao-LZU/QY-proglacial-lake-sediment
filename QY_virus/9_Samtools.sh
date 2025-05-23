source /data01nfs/user/liupf/miniconda3/bin/activate
conda activate samtools


samtools view -@ 4 -bS QYJanS1.sam > QYJanS1.bam
samtools sort -@ 4 QYJanS1.bam > QYJanS1.bam.sorted
samtools view -@ 4 -bS QYJanS7.sam > QYJanS7.bam
samtools sort -@ 4 QYJanS7.bam > QYJanS7.bam.sorted
samtools view -@ 4 -bS QYJanS9.sam > QYJanS9.bam
samtools sort -@ 4 QYJanS9.bam > QYJanS9.bam.sorted

samtools view -@ 4 -bS QYMayS1.sam > QYMayS1.bam
samtools sort -@ 4 QYMayS1.bam > QYMayS1.bam.sorted
samtools view -@ 4 -bS QYMayS7.sam > QYMayS7.bam
samtools sort -@ 4 QYMayS7.bam > QYMayS7.bam.sorted
samtools view -@ 4 -bS QYMayS9.sam > QYMayS9.bam
samtools sort -@ 4 QYMayS9.bam > QYMayS9.bam.sorted
