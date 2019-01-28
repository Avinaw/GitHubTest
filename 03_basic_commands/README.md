# 30K Feet View

## Introduction
In this section we will build understanding around basic git commands

## References
* https://git-scm.com/docs
* https://github.com/joshnh/Git-Commands

## Assignments
### Must Do
* Initialize a local git repository
* Run *git status* command
* Create a file *README.md*
* Run *git status* command
* Add file *README.md* in your local repository
* Add *My first interaction with Git* content in *README.md*
* Run *git status* command
* Update file *README.md* in your local repository
* Run *git status* command
* Create files *README1.md README2.md README3.md README4.md*
* Run *git status* command
* Add all the newly added files in your local repository without giving their name.
* Run *git status* command
* Remove files *README1.md README2.md* from local repository
* Add content in *Temporary content* in *README3.md*
* Run *git status* command
* Find out the content that is added in *README3.md*
* Undo the changes in *README3.md* file 
* Run *git status* command
* Create a branch *ninja* from current branch
* Create *sensei* branch from *ninja* branch and switch to *sensei* branch
* List out all the local branches
* Delete *sensei* branch
* Find out the current branch
* List out all the commits that have been done

### Good To Do
* Create a shell script that will take a *Git URL* *Number of days* as input and it will list out all the commits that have been done in last n number of days. The script should display information like given below. A commit will be treated as valid one if it starts with a JIRA id **[JIRA-xxxx]:**
```text
Date/Time, Author Name, Author Email, Commit Message, Valid Commit Message
``` 
* Enable a functionality in your local repository to not allow a commit if it follows above condition of a valid commit message

## Learning
In this section you learned all the basic commands of git to manage local repository
* init
* add
* status
* commit
* rm
* diff
* checkout
* branch