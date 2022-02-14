#!/bin/bash

# How to use: https://developers.redhat.com/articles/2022/02/02/protect-secrets-git-cleansmudge-filter?sc_cid=7013a000002qDukAAE#one_filter_to_rule_them_all
# basically, list files to filter in .gitattributes file in each repository with `file.txt filter=smudgeClean`

declare -A mapArr

mapArr["my-work-private-server.mywork.com"]="<reducted-work-server>"
mapArr["my-personal-private-server.myowndomain.org"]="<reducted-personal-server>"
mapArr["A*&#QAADDA(77##F"]="super-secret-token"
mapArr["oops@mypersonal.email"]="support@correct.email"

sedcmd="sed"
if [[ "$1" == "clean" ]]; then
  for key in ${!mapArr[@]}; do
    sedcmd+=" -e \"s/${key}/${mapArr[${key}]}/g\""
  done  
elif [[ "$1" == "smudge" ]]; then
  for key in ${!mapArr[@]}; do
    sedcmd+=" -e \"s/${mapArr[${key}]}/${key}/g\""
  done  
else  
  echo "use smudge/clean as the first argument"
  exit 1
fi

eval $sedcmd
