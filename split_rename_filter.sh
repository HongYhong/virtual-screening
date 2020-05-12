###################################################################
#                                                                 #
#     THE SCRIPT FOR SPLIT,RENAME,FILTER THE DOWNLOADED FILES     #
#                                                                 #
###################################################################

#author : yanhong hong

export id="$1.mol2"

cd `basename $id .mol2`

mkdir mol2_split

mkdir mol2_rename

cp $id mol2_split

cd mol2_split

babel $id $id -m

rm $id

cd ..

for i in mol2_split/*;do cp $i mol2_rename;done

ls mol2_split > origlist

cat mol2_rename/*|grep "^ZINC" > zinclist

paste origlist zinclist|tr [:blank:] ',' > renamelist

cp renamelist mol2_rename/

cd mol2_rename

while IFS=',' read orig target; do mv --backup=numbered  "$orig" "$target"; done < renamelist 

rm renamelist

cd ..

cp ../sorted_cutted_np.txt .

cat zinclist |sort|uniq > zinclist_sort

comm -1 -2 sorted_cutted_np.txt zinclist_sort > commonlist

mkdir mol2_final

cat commonlist |while read i ;do cp mol2_rename/$i* mol2_final/;done