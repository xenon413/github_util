# Common Git Commands

> A quick reference of commonly used Git commands.

## Repository setup

### Initialize a new repository
```bash
git init
```

### Clone a repository
```bash
git clone <repo_url>
```

## Status & staging

### Check working tree status
```bash
git status
```

### Stage changes
```bash
# stage everything
git add .

# stage specific files
git add <file1> <file2>

# stage by patch (interactive)
git add -p
```

### Unstage changes (keep file changes)
```bash
git restore --staged <file>
```

### Discard local changes in a file
```bash
git restore <file>
```

## Commit

### Create a commit
```bash
git commit -m "commit message"
```

### Amend the last commit
```bash
git commit --amend
```

## Branch

### Show branches
```bash
# local
git branch

# local + remote
git branch -a
```

### Switch branch
```bash
# modern
git switch <branch>

# older (still common)
git checkout <branch>
```

### Create and switch to a new branch
```bash
# modern
git switch -c <new-branch>

# older
git checkout -b <new-branch>
```

### Rename branch
```bash
# rename current branch
git branch -m <new-name>

# rename a specific branch
git branch -m <old-name> <new-name>
```

### Delete branch
```bash
# delete (safe; refuses if not fully merged)
git branch -d <branch>

# force delete
git branch -D <branch>
```

## Remote & sync

### Show remotes
```bash
git remote -v
```

### Fetch updates from remote (no merge)
```bash
git fetch origin
```

### Pull from remote (fetch + merge)
```bash
git pull origin <branch>
```

### Push to remote
```bash
git push origin <branch>
```

### Push a new local branch to remote and set upstream
```bash
git push -u origin <branch>
```

### Clean up deleted remote branches
```bash
git fetch --prune
# or
git remote prune origin
```

## View history

### View commit log
```bash
# compact
git log --oneline --decorate --graph --all

# latest N commits
git log -n 20
```

### Show changes introduced by a commit
```bash
git show <commit>
```

## Diff

### See what changed
```bash
# unstaged vs last commit
git diff

# staged vs last commit
git diff --staged
```

## Merge / Rebase

### Merge a branch into current
```bash
git merge <branch>
```

### Rebase current branch onto another
```bash
git rebase <base-branch>
```

## Stash

### Temporarily save local changes
```bash
git stash
```

### List stashes
```bash
git stash list
```

### Apply the latest stash (keep stash)
```bash
git stash apply
```

### Apply and drop the latest stash
```bash
git stash pop
```

## Reset (be careful)

### Undo commits but keep changes (move HEAD)
```bash
# keep staged changes
git reset --soft <commit>

# keep working tree changes
git reset --mixed <commit>
```

### Hard reset (discard local changes)
```bash
git reset --hard <commit>
```

## Restore / checkout files

### Overwrite files from another branch
```bash
git checkout <branch> -- <path1> <path2>
```

### Restore a file from a specific commit
```bash
git restore --source <commit> <file>
```

## Tags

### Create a tag
```bash
git tag v1.0.0
```

### Push tags
```bash
git push --tags
```

## User config

### View username/email
```bash
# current repository
git config user.name
git config user.email

# global
git config --global user.name
git config --global user.email
```

### Configure username/email (current repository)
```bash
git config user.name <your_user_name>
git config user.email <your_email>
```

### Configure username/email (global)
```bash
git config --global user.name <your_user_name>
git config --global user.email <your_email>
```