-------------------------------------GIT-------------------------------------
Git is the most popular verion control system which records changes made to our code over the time in a special database called repository.
it is ditributed verion control system. So that we can track our project code history and see who has made change?whenthey made?why they made?

#what is centralised and distributed verion control system?
In centralised system all the people in the project will connect to a project and to share their changes with other. The problem with the centralised system is that single point of failure, if the server goes offline we cannot collabrate or save snapshot of our project. 
Ex: Subversion, MS Team foundation server
Where as in distributed sytem every team member has a copy if the project with its history on their machine so we can save snapshot of our project locally in our machine. If the cental server is offline we can synchronie our work directly with others. Ex: Git, Mercurial

#Different ways to use Git?
Using command line 
Git Bash
Code editors & IDEs (VS code)
Git GUI
Gitkraken Git GUI
Sourcetree Git GUI

#Git Bash (Bourne Again Shell) 
Command line tool for specifically designed for Git.

#Configuration settings
System: all users
Global: all repositories of the current users
local: the current repository

#to add your name
$git config --global user.name "sai kumar"

#to add the email
$ git config --global user.email t4ssietsai86@gmail.com

#to open default editor
$ code

#it will be waiting unitl we close the vs code which default editor in our case
$ git config --global core.editor "code --wait"

#to open the global settings configuration file
$ git config --global -e

#handling end of lines conflict

in windows we use \r(carriage return)\n (line feed)
and in mac/linux we use \n

#carriage return line feed
 git config --global core.autocrlf true (for windows)
 git config --global core.autocrlf input (for mac/linux)
 
 git config --help, git config --h
 
 #check status
 git status #means it shows the files in stages whether they are added to it or not 
 
 git ls-files #to check the files that staged
 
 #ignoring unwated files
 
 echo logs/ > .gitignore

 you can create a file naming it as gitignore
 and all the folders or files which you wanted to ignore
 
 echo logs\ > .gitignore (which will add that logs folder name inside the file and it ignores whatever is there inside)
 in the same way we can list as many files as we want 
 
 logs\
 main.js
 *.logs
 note: this gitignore will only work when you havent added your changes to repository(when you havent commited your changes). If you already added to repository and if you try to ignore it wont. for that we need to remove
 that file/folder which we wanted to add to gitignore and already committed. So to remove the file/folder only from the staging area is 
 git rm --cached -r foldername
 git rm --cached  filename
 
 once that is done add the file/folder location in the gitignore file and commit the changes. so going forward it will ignore the files that are mentioned.
 
 #git status -s(short status)
 
 >  git status -S
 M filel.js #red M in right side says that file1.js modifed only in working directory
?? file2.js #not added to staging means new file
left column represents staging area, 
left column represents working directory
M  filel.js #green M in left side says that file1.js modifed staging directory
MM file1.js #green M in left and red M in right says that some changes modifed to file1.js in the working directory but not staged
A  file2.js means added to the staging area

#diff 
git diff 
this is used to see what has been chaged in the files that are not yet committed

There are some better tools to compare the code like VS code, p4merge etc

to use the vscode as our default diff tool
git config --global diff.tool vscode
$ git config --global diff.tool.vscode.cmd "code --wait --diff $LOCAL $REMOTE"


git config --global -e #to open git configfile in vscode

git difftool #to comapare the changes

Git objects:

@ Commits

@ Blobs (Files)

@ Trees (Directories)

@ Tags

#Push the code to GitHub: 
Link the local repository to the GitHub repository: Run 
git remote add origin <repo-url>, replacing <repo-url> with the URL of the GitHub repository.

git remote add origin https://github.com/saikumargt86/testgit.git 

git push -u origin master #to push the code to the master branch of the GitHub repository.

#To clone a repository from GitHub, follow these steps:

Open the terminal or command prompt on your computer
Change the current working directory to the location where you want to clone the repository
Use the command git clone <repository-url> to clone the repository, where <repository-url> is the URL of the repository you want to clone.
Press Enter. The repository will be cloned to your local machine.
For example, to clone a repository called "example-repo" located at https://github.com/username/example-repo.git, use the following command:


#Cloning and pulling are two different actions in Git and GitHub that are used to get a copy of a repository onto your local machine.

Cloning a repository means that you are making a copy of the entire repository and all its history, and saving it onto your local machine. You clone a repository once, and you have a complete local copy of the repository that you can use to work on, regardless of your internet connection.

Pulling updates your local copy of a repository with the latest changes that have been made to the repository on GitHub. Pulling only retrieves the changes, not the entire repository. You can pull updates from a repository you have cloned onto your local machine.

In other words, you clone a repository to get a local copy of the code, and you pull from the repository to keep your local copy up-to-date with the latest changes made by others.

The git pull command is a combination of the git fetch and git merge commands, which retrieves the changes from the remote repository and merges them into your local branch.

git pull origin branch-name
$ git pull https://github.com/saikumargt86/testgit.git master

#fork
In Git, a "fork" is a copy of an existing repository that you create on your own GitHub account. A fork allows you to make changes to the code in a repository without affecting the original repository. 
You can use forks to experiment with changes, fix bugs, or add new features to a project, and then submit a pull request to the original repository to have your changes merged into the main codebase.


#Here is a list of some basic Git commands:

git init: Initialize a local Git repository.

git clone <repository-url>: Clone an existing repository from a remote server to your local machine.
-----
git add <file-name>: Add a file to the stage, preparing it for a commit.

git commit -m "message": Commit the changes in the stage to the local repository, with an accompanying message.

git push origin <branch-name>: Push the changes from the local repository to a remote repository, specifying the branch name.

git pull: Fetch and merge the changes from a remote repository to the local repository.

git branch: List the branches in the local repository.

git checkout -b <branch-name>: Create and switch to a new branch.

git merge <branch-name>: Merge changes from the specified branch into the current branch.

git status: Show the status of the repository, including the files that have been modified and staged for commit.