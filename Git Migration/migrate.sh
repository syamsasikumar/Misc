#!/bin/bash
# Set the field seperator to a newline
IFS="
"
# Loop through the file
for repo in `cat config`;do
# Echo the line (echo could be changed to whatever command you want)
 echo "Migrating $repo"
 git clone git@<source_url>:$repo.git;
 cd $repo/
 git remote set-url origin  git@<source_url>:$repo.git;
 git remote update;
 echo "before fetch";
 git fetch; 
 for remote in `git branch -r | grep -v master | sed -e 's/^[ \t]*//'`; do git checkout --track $remote; done;
 git checkout master;
 git remote set-url origin  git@<destination>:$repo.git;
 git push --all origin -u; git push --tags;
done
