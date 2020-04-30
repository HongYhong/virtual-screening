export id="part_$1"
mkdir $id
cd $id
mkdir dock pdbqt
mkdir dock/log dock/result
cd pdbqt
for i in ../../../$id/*;do pythonsh ../../prepare_ligand4.py -l $i;done  #We use prepare_ligand4.py to prepare the ligands for autodock vina.
cd ..
cp ../conf.txt dock
cp ../receptor.pdbqt dock
cd dock
ls ../pdbqt/|sort > list


cat list |while read i;do vina --config conf.txt --ligand ../pdbqt/$i --out result/`basename $i .pdbqt`.pdbqt --log log/`basename $i .pdbqt`.log;done

for i in log/*;do cat $i|egrep "^   1"|awk -v a=`basename $i .log` '{print a " " $2}';done > energylist

sort -k2n energylist > $id_energylist_sort