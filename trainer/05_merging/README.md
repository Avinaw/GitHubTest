# 30K Feet View

## Introduction
In this section we will build understanding around git merge operation

## References
* https://git-scm.com/docs/git-merge
* https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging

## Assignments
We will continue with our *GitCommand* remote repository
### Must Do
* Create a folder *ninja* at the root level of your cloned code
* Add a file *README.md* with content "Trying fast forward merge"
* Create a branch *ninja* and move to it
* Run *git status* command
* Commit your changes to *ninja* branch
* Merge *ninja* branch to *master* branch make sure that a new commit get's created
* Assuming you are in *master* branch, modify *README.md* with content *Changes in master branch*, commit the changes in *master* branch.
* Switch to *ninja* branch, modify *README.md* with content *Changes in ninja branch*, commit the changes in *ninja* branch.
* Merge *master* branch to *ninja* branch in such a fashion that changes of *master* branch overrides changes in *ninja* branch
* Revert the above merge commit
* Merge *master* branch to *ninja* branch in such a fashion that changes of *ninja* branch overrides changes in *master* branch
* Revert the above merge commit
* Merge *master* branch to *ninja* branch in such a fashion that changes of both branches gets accumulated.

### Good To Do
* Simulate the above scenarios using rebase
* Create 2 repositories in you Git Lab account *Repo1* & *Repo2* in *Repo1*. Create 2 branches *branchR11 and branchR12* in *Repo1*, similarly create 2 branches *branchR21 and branchR22* in *Repo2*. Now merge code of branch *branchR11* in *Repo1* to *branchR22* in *Repo2*.

## Learning
In this section you learned about git branching
* Fast forward merge
* Auto Merge
* Merge with conflict
* Commit revert
* rebase