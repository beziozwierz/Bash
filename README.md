# Bash
Some  bash scripts

## 1. SVN

*scripts to print svn stats*

PRINTS:<br/>
\# of commits<br/>
\# of added lines<br/>
\# of deleted lines<br/>


USAGE:<br/>
`./svnStatsUser.sh <REPO_URL> <USERNAME>` <- will show stats of specific user<br/>
`./svnStatsAll.sh <REPO_URL>` <- will run the script for all users
<br/><br/>
###### NOTE: Scripts make many calls to the remote repo, so aren't very efficient

## 2. GIT: 

*scripts to print git stats*

PRINTS:<br/>
\# of commits <br/>
\# of added lines <br/>
\# of deleted lines <br/>

USAGE: <br/>
`./gitStatsUser.sh <USERNAME> <BRANCH NAME>` <- will show stats for specific user and branch <br/>
`./gitStatsAll.sh <BRANCH_NAME>` <- will show stats for all users in the given branch <br/>

###### NOTE: Scripts have to be run inside repo directory (no URL as a parameter)


## 3.NODES: 

*script that removes dangling nodes in git repository*
###### NOTE: Script should be run inside repository directory (no URL as a parameter)


