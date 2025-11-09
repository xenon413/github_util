# common git commands

### switch branch
git checkout "branch name"

git switch "branch name"

### show all branch
git branch -a

### create branch
git checkout -b "branch name"

### delete branch
git checkout -d "branch name"

### force delete brance
git checkout -D "branch name"

### overwrite file from other branck
git checkout "branch name" -- "file path1" "file path2"

### pull from remote
git pull origin "branch name"

### push to remote
git push origin "branch name"

git config user.name your_user_name
git config user.email your_email