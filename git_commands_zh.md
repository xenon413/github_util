# 常用 Git 指令

> 常見 Git 指令速查表（繁體中文）。

## 建立 / 取得 Repository

### 初始化新的儲存庫
```bash
git init
```

### 複製（clone）遠端儲存庫
```bash
git clone <repo_url>
```

## 狀態 / 暫存（stage）

### 查看工作目錄狀態
```bash
git status
```

### 加入暫存區（stage）
```bash
# 全部加入暫存
git add .

# 加入指定檔案
git add <file1> <file2>

# 互動式分段加入（patch）
git add -p
```

### 取消暫存（保留檔案修改）
```bash
git restore --staged <file>
```

### 放棄檔案的本地修改
```bash
git restore <file>
```

## 提交（Commit）

### 建立提交
```bash
git commit -m "commit message"
```

### 修正上一個提交（amend）
```bash
git commit --amend
```

## 分支（Branch）

### 查看分支
```bash
# 本地分支
git branch

# 本地 + 遠端分支
git branch -a
```

### 切換分支
```bash
# 新版（建議）
git switch <branch>

# 舊版（仍常見）
git checkout <branch>
```

### 建立並切換到新分支
```bash
# 新版
git switch -c <new-branch>

# 舊版
git checkout -b <new-branch>
```

### 重新命名分支
```bash
# 重新命名目前分支
git branch -m <new-name>

# 重新命名指定分支
git branch -m <old-name> <new-name>
```

### 刪除分支
```bash
# 安全刪除（未合併時會拒絕）
git branch -d <branch>

# 強制刪除
git branch -D <branch>
```

## 遠端（Remote）/ 同步

### 查看遠端設定
```bash
git remote -v
```

### 取得遠端更新（不合併）
```bash
git fetch origin
```

### 從遠端拉回並合併（fetch + merge）
```bash
git pull origin <branch>
```

### 推送到遠端
```bash
git push origin <branch>
```

### 推送新分支並設定上游（upstream）
```bash
git push -u origin <branch>
```

### 清理遠端已刪除的分支參考
```bash
git fetch --prune
# 或
git remote prune origin
```

## 紀錄（Log）

### 查看提交紀錄
```bash
# 精簡 + 圖形化
git log --oneline --decorate --graph --all

# 最近 N 筆
git log -n 20
```

### 查看某次提交內容
```bash
git show <commit>
```

## 差異（Diff）

### 查看改了哪些內容
```bash
# 尚未 stage 的差異
git diff

# 已 stage 的差異
git diff --staged
```

## 合併 / 重整（Merge / Rebase）

### 合併分支到目前分支
```bash
git merge <branch>
```

### 將目前分支 rebase 到另一個分支上
```bash
git rebase <base-branch>
```

## 暫存變更（Stash）

### 暫存目前未提交的修改
```bash
git stash
```

### 查看 stash 清單
```bash
git stash list
```

### 套用最新 stash（保留 stash）
```bash
git stash apply
```

### 套用並移除最新 stash
```bash
git stash pop
```

## 重設（Reset，請小心）

### 回到某個提交，但保留修改內容
```bash
# 回退提交且保留「已 stage」狀態
git reset --soft <commit>

# 回退提交且取消 stage，但保留檔案修改
git reset --mixed <commit>
```

### 強制回到某個提交（會丟掉本地修改）
```bash
git reset --hard <commit>
```

## 還原檔案 / 從其他分支取檔

### 用另一個分支的版本覆蓋檔案
```bash
git checkout <branch> -- <path1> <path2>
```

### 還原某檔案到指定 commit 的版本
```bash
git restore --source <commit> <file>
```

## 標籤（Tags）

### 建立標籤
```bash
git tag v1.0.0
```

### 推送標籤到遠端
```bash
git push --tags
```

## 使用者設定（User config）

### 查看目前的 username/email
```bash
# 目前 repo 的設定
git config user.name
git config user.email

# 全域設定
git config --global user.name
git config --global user.email
```

### 設定 username/email（僅目前 repo）
```bash
git config user.name <your_user_name>
git config user.email <your_email>
```

### 設定 username/email（全域）
```bash
git config --global user.name <your_user_name>
git config --global user.email <your_email>
```
