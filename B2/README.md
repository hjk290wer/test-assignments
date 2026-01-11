B2 — Git: Working with uncommitted changes



This task demonstrates how to safely work with uncommitted changes,

switch branches, and rename the last commit using Git.



Situation:

\- Work is in progress in the feature/junior-task branch.

\- There are uncommitted changes that are not ready to be committed.

\- It is necessary to switch to the main branch to fix a bug.

\- After returning to feature/junior-task, the last commit needs to be renamed.



Solution:



1\. Save uncommitted changes

Uncommitted changes are temporarily saved to allow safe branch switching.



git stash



2\. Switch to the main branch



git switch main



3\. Fix the bug in main

Apply the required fix and create a commit.



git add .

git commit -m "Fix critical bug"



4\. Return to the feature branch



git switch feature/junior-task



5\. Restore previously saved changes



git stash pop



6\. Rename the last commit

Rename the most recent commit in the current branch.



git commit --amend -m "Updated commit message"



Result:

\- Uncommitted changes were safely preserved using git stash.

\- The bug was fixed in the main branch.

\- Work in feature/junior-task was restored.

\- The last commit was successfully renamed.



