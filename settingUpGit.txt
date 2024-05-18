# Basic Git Commands

## Initialize a new Git repository
git init

## Clone an existing repository
git clone <repository_url>

## Check the status of the repository
git status

## Stage changes for commit
git add <file_or_directory>
git add .

## Commit changes with a message
git commit -m "Commit message"

## Amend the most recent commit
git commit --amend

## Push changes to the remote repository on the main branch
git push origin main

## Force push changes to the remote repository on the main branch (use with caution)
git push --force origin main

## Pull the latest changes from the remote repository on the main branch
git pull origin main

## Create a new branch
git branch <branch_name>

## Switch to an existing branch
git checkout <branch_name>

## Create a new branch and switch to it
git checkout -b <branch_name>

## Merge another branch into the current branch
git merge <branch_name>

## Rebase the current branch onto another branch
git rebase <branch_name>

## View the commit history
git log

## View a summarized commit history
git log --oneline

## Create a new tag
git tag <tag_name>

## Push tags to the remote repository
git push origin <tag_name>

## Delete a local branch
git branch -d <branch_name>

## Delete a remote branch
git push origin --delete <branch_name>

## Stash changes
git stash

## Apply stashed changes
git stash apply

## List stashes
git stash list

## Show changes of a specific stash
git stash show <stash@{index}>

## Delete a specific stash
git stash drop <stash@{index}>

## Delete all stashes
git stash clear
