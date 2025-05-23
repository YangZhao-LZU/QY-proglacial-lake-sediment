#geNomad
conda activate genomad
output_name=QY_virus
prediction_dir=/datanode03/zhaoy/QY/QY_virus/prediction
original_dir=/datanode03/zhaoy/QY/QY_virus/original_data
contigs_dir=$original_dir/contigs
virsorter_result="/datanode03/zhaoy/QY/QY_virus/prediction/virsorter_result"
virfinder_result="/datanode03/zhaoy/QY/QY_virus/prediction/virfinder_result"
vibrant_result="/datanode03/zhaoy/QY/QY_virus/prediction/vibrant_result"
genomad_result="/datanode03/zhaoy/QY/QY_virus/prediction/genomad_result"
cd $prediction_dir
for file in $contigs_dir/*.fa
do
{
filename=$(basename "$file")
sample=${filename%_.fa}
if [ ! -d "$genomad_result/"$sample"_genomadresult" ];then
 echo "$sample" unfinished
 genomad end-to-end --min-score 0.8 --threads 30 --cleanup $file $prediction_dir/"$sample"_genomadresult /datanode03/zhaoy/database/genomad_db
 mv $prediction_dir/"$sample"_genomadresult $genomad_result
 else
 echo "$sample" finished
fi
} 
done

#Virsorter2
conda activate vs2
output_name=QY_virus
prediction_dir=/datanode03/zhaoy/QY/QY_virus/prediction 
original_dir=/datanode03/zhaoy/QY/QY_virus/original_data
contigs_dir=$original_dir/contigs
virsorter_result="/datanode03/zhaoy/QY/QY_virus/prediction/virsorter_result"
virfinder_result="/datanode03/zhaoy/QY/QY_virus/prediction/virfinder_result"
vibrant_result="/datanode03/zhaoy/QY/QY_virus/prediction/vibrant_result"
genomad_result="/datanode03/zhaoy/QY/QY_virus/prediction/genomad_result"
cd $prediction_dir
for file in $contigs_dir/*.fa
do
{
filename=$(basename $file)
sample=${filename%_.fa}
if [ ! -d "$virsorter_result/""$sample""_virsorterresult" ];then
 echo "$sample" unfinished
 virsorter run -w $prediction_dir/"$sample"_virsorterresult -i $file -j 15 --min-length 1000 all -d /datanode03/zhaoy/database/virsorterdb/db
 mv $prediction_dir/"$sample"_virsorterresult $virsorter_result
 else
 echo "$sample" finished
fi
} 
done

#DeepVirFinder
conda activate deepvirfinder
output_name=QY_virus
prediction_dir=/datanode03/zhaoy/QY/QY_virus/prediction
original_dir=/datanode03/zhaoy/QY/QY_virus/original_data
contigs_dir=$original_dir/contigs
virsorter_result="/datanode03/zhaoy/QY/QY_virus/prediction/virsorter_result"
virfinder_result="/datanode03/zhaoy/QY/QY_virus/prediction/virfinder_result"
vibrant_result="/datanode03/zhaoy/QY/QY_virus/prediction/vibrant_result"
genomad_result="/datanode03/zhaoy/QY/QY_virus/prediction/genomad_result"
cd $prediction_dir
for file in $contigs_dir/*.fa
do
{
filename=$(basename "$file")
sample=${filename%.fa}
if [ ! -d "$virfinder_result/"$sample"_virfinderresult" ];then
 echo "$sample" unfinished
 python /datanode03/huangxy/programs/DeepVirFinder/dvf.py -i $file -o $prediction_dir/"$sample"_virfinderresult -l 1000 -c 50
 mv $prediction_dir/"$sample"_virfinderresult $virfinder_result
 else
 echo "$sample" finished
fi
}
done

#VIBRANT
conda activate vibrant
output_name=QY_virus
prediction_dir=/datanode03/zhaoy/QY_virus/prediction
original_dir=/datanode03/zhaoy/QY_virus/original_data
contigs_dir=$original_dir/contigs
virsorter_result="/datanode03/zhaoy/QY_virus/prediction/virsorter_result"
virfinder_result="/datanode03/zhaoy/QY_virus/prediction/virfinder_result"
vibrant_result="/datanode03/zhaoy/QY_virus/prediction/vibrant_result"
genomad_result="/datanode03/zhaoy/QY_virus/prediction/genomad_result"
cd $prediction_dir
for file in $contigs_dir/*.fa
do
{
filename=$(basename "$file")
sample=${filename%.fa}
if [ ! -d "$vibrant_result/"$sample"_vibrantresult" ];then
 echo "$sample" unfinished
VIBRANT_run.py -i $file -folder $prediction_dir/"$sample"_vibrantresult -l 1000 -t 1
mv $prediction_dir/"$sample"_vibrantresult $vibrant_result
 else
 echo "$sample" finished
fi
}
done