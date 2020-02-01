#!/bin/bash

stable_branch()

{

    git add .
    git push origin $i

    if [ $? -eq 0 ]
    then
        echo "stable branch"
         echo "$i" >> /home/asheesh/new_stable.txt

    else
        echo " unstable branch"
	echo "$i" >> /home/asheesh/unstable_branch.txt

fi


git checkout master
}


stable_branch
