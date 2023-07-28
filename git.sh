#!/bin/sh
#some function auto git repo
RED='\033[0;31m'
NC='\033[0m' # No Color

function no_param(){
    echo 'check argument...'
}

function init_repo(){
    repo_name='git@github.com:Tankono/flutter_app_getx.git'
    git init
    git add .
    git commit -m "first commit"
    git branch -M main
    git remote add origin git@github.com:Tankono/flutter_app_getx.git
    git push -u origin main
}

function commit(){
    commitmsg="update source code"
    if ["$*" == ""];then
        printf "commit with default message:$commitmsg"       
    else
        echo "update default message:"$commitmsg
    fi
    commitmsg="update source code"
    git pull
    git add .
    git commit -m "$commitmsg"
    git push
}

function create_branch(){
    echo 'create branch...'
    new_branch="temp"
    if ["$*" == ""];then
        printf "${RED}[Fails]${NC}:Nhập tên branch mới vào nhé."
        exit 1    
    else
        echo -e "Create new branch:$1"
        new_branch=$1
        # echo "Nhập tên branch mới vào nhé."
        # exit 1
    fi
    # echo 'Create new branch'
    git checkout -b $new_branch
    git push origin -u $new_branch
}

# create_branch app_login
commit
#init_repo