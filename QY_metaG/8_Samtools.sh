conda activate samtools
cd /datanode03/zhaoy/host_coverm/
awk '!seen[$2]++ || !/^@SQ/' QYJanS1.sam > QYJanS11.sam
samtools view -@ 4 -bS QYJanS11.sam > QYJanS1.bam
samtools sort -@ 4 QYJanS1.bam > QYJanS1.bam.sorted

awk '!seen[$2]++ || !/^@SQ/' QYJanS7.sam > QYJanS71.sam
samtools view -@ 4 -bS QYJanS71.sam > QYJanS7.bam
samtools sort -@ 4 QYJanS7.bam > QYJanS7.bam.sorted

awk '!seen[$2]++ || !/^@SQ/' QYJanS9.sam > QYJanS91.sam
samtools view -@ 4 -bS QYJanS91.sam > QYJanS9.bam
samtools sort -@ 4 QYJanS9.bam > QYJanS9.bam.sorted

awk '!seen[$2]++ || !/^@SQ/' QYMayS1.sam > QYMayS11.sam
samtools view -@ 4 -bS QYMayS11.sam > QYMayS1.bam
samtools sort -@ 4 QYMayS1.bam > QYMayS1.bam.sorted

awk '!seen[$2]++ || !/^@SQ/' QYMayS7.sam > QYMayS71.sam
samtools view -@ 4 -bS QYMayS71.sam > QYMayS7.bam
samtools sort -@ 4 QYMayS7.bam > QYMayS7.bam.sorted


awk '!seen[$2]++ || !/^@SQ/' QYMayS9.sam > QYMayS91.sam
samtools view -@ 4 -bS QYMayS91.sam > QYMayS9.bam
samtools sort -@ 4 QYMayS9.bam > QYMayS9.bam.sorted

