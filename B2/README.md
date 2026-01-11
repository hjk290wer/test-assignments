# B2 — Git: Working with Uncommitted Changes

## Overview
This task demonstrates a safe and common Git workflow when:
- work is in progress and not ready to be committed,
- it is necessary to switch branches,
- the last commit message needs to be corrected.

The solution uses standard Git commands and keeps the repository history clean.

---

## Scenario
- Current branch: `feature/junior-task`
- There are uncommitted local changes.
- A bug must be fixed in the `main` branch.
- After returning to `feature/junior-task`, the last commit message must be updated.

---

## Solution Steps

### 1. Save uncommitted changes
Temporarily store the current working changes.

```bash
git stash
```

---

### 2. Switch to the main branch
```bash
git switch main
```

---

### 3. Fix the bug in main
Apply the fix and create a commit.

```bash
git add .
git commit -m "Fix critical bug"
```

---

### 4. Return to the feature branch
```bash
git switch feature/junior-task
```

---

### 5. Restore saved changes
Bring back the previously stashed work.

```bash
git stash pop
```

---

### 6. Rename the last commit
Update the message of the most recent commit.

```bash
git commit --amend -m "Updated commit message"
```

---

## Result
- Uncommitted changes were safely preserved using `git stash`.
- The bug was fixed in the `main` branch.
- Work in `feature/junior-task` was restored.
- The last commit message was successfully updated.

---

## Notes
- `git stash` is preferred when changes are not ready for commit.
- `git commit --amend` should only be used on commits that have not been shared with others.
