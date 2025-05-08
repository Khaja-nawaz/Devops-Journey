# 📘 Git Learning Log – Branching, Restoring, Resetting & Error Handling

## 🗓️ Date: May 8, 2025

---

## 🔧 Git Commands Practiced

### 🗂️ Repository Initialization and Basic Workflow

- `git init`  
  Initialize a new Git repository.

- `git add <file>`  
  Stage changes for the next commit.

- `git commit -m "message"`  
  Record staged changes with a descriptive message.

- `git status`  
  Display the state of the working directory and staging area.

- `git log`  
  View the commit history.

### 🌿 Branch Management

- `git branch <branch-name>`  
  Create a new branch.

- `git checkout <branch-name>`  
  Switch to the specified branch.

- `git checkout -b <branch-name>`  
  Create and switch to a new branch.

### 🔄 Restoring and Resetting Changes

- `git restore <file>`  
  Discard changes in the working directory.

- `git restore --staged <file>`  
  Unstage a file without discarding changes.

- `git reset`  
  Reset current HEAD to the specified state.

- `git reset --hard`  
  Reset the index and working directory. All changes are discarded.

### 🗃️ Folder Structure Created

Organized the project with the following structure:

-project/
├── src/
│ ├── main.py
│ └── utils.py
├── tests/
│ └── test_main.py
├── README.md
└── .gitignore

# Errors
## hey I Have encountered Error let me Tell you did resloved
##The Error I Encountered was i couldnt able to add file to the git repo 
##How did I resolved 

--

Step:1
- 'git add <file>'

 ##git add is used to stage changes from your working directory into the staging area

Step:2
- git commit -m "Your commit message"
## a commit records a snapshot of the project's current state, including all tracked files, and stores it in the repository
