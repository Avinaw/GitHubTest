#!/bin/bash
source function.sh

git branch > local_branch

git branch -r > remote_branch

sed -i 's/*/ /g' local_branch

loop=$(cat local_branch)

for i in $loop
do
xz=$( grep "$i" /home/asheesh/alias/remote_branch)

if [ $? -eq 0 ]
then
	echo "branch is present"
else

   git add .
   git commit -m "feature-1 add commit objects"
   
	git checkout $i
	echo "in_branch '$i' "
	echo "hello booy its me" > new_file_by_script
	git add .
        git commit -m "feature-2 add script_file"
	git push origin $i

	git checkout master

fi

done

echo "checking stable branches"

for i in $loop
do
   git add .
   git commit -m "feature-1 add commit objects"
   
   git checkout $i

   stable_branch


done


