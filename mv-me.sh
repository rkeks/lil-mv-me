#!/usr/bin/env bash
# replacing last slash in first arg

search_dir=${1%/}
regexp="Files$"
srex="*Ex_*"
[[ $search_dir =~ $srex ]] && echo "huy $BASH_REMATCH"

# then echo match
#     #echo "we need to rename $BASH_REMATCH";
# fi
 
# for entry in "$search_dir"/*
	    
# do
#    # echo `expr "$entry" : '\(.*Exercise\ Files$\)'`

#     # case entry in
#     # 	"Exercise\ Files") echo "I'll make a job";
#     #  esac 
#       echo "$entry"
	       
# done
# for file in "$search_dir"/*; do
#     echo $file
#     if [[ $file =~ $regex ]]; then
#         echo -e "Found file: $file"
#     fi
# done
