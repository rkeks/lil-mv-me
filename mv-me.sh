#!/usr/bin/env bash
# replacing last slash in first arg
search_dir=${1%/}
BASEDIR=$(dirname "$0")
fex='Files$'
srex='(Ex_Files)'
[[ $search_dir =~ $srex ]] && rename_base=1
for entry in "$search_dir"/*
do
    if [[ $entry =~ $fex ]]
    then
	np=$BASEDIR/$entry/
	cd "$np"

	for dirs in "."/*
	do
	    fold=$(basename $dirs)
	    newdir=../$fold
	    echo "Moving $fold"
	   # echo "mv -f $fold $newdir"
	    `mv -f $fold $newdir`
	done

	echo "Moving up "
	cd ".."
	echo "and now delete old useless folder"
	rmdir -p "Exercise Files"
	pp=`pwd`
        fi
done
cd ..
if (($rename_base))
then
nn=`echo $(basename $pp) | awk '{print substr($0,10)}'`
#echo "mv $search_dir $nn"
mv $search_dir $nn
echo "Job is done"
fi
