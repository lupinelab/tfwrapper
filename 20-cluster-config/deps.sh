currentdir=${PWD##*/}
currentdirnum=$(echo $currentdir | sed 's/-.*//')
echo $currentdirnum
dirnums=$(ls .. | grep '^[0-9]' | sed 's/-.*//')
ls .. | grep '^[0-9]' | awk -F"-" '{if ($1 == $currentdirnum) print $1}'
# deps=$(awk -F '$1 < $dirnum')