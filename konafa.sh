#!/bin/bash
clear

# Step 1: Create file2.txt and write to it
touch file2.txt
echo "hello from shell script " >> file2.txt
git branch -D shellscript
# Step 2: Create new branch and switch to it
git switch -c shellscript

# Step 3: Stage and commit changes
git add .
git commit -m "this commit from shell script to add file2"

# Step 4: Push to origin
git push -u origin shellscript

# Step 5: Switch back to master and merge the new branch
git switch master
git merge shellscript

# Step 6: Log to another file and print it
echo "file is created " >> print.txt
cat print.txt
