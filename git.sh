#!/bin/sh
#some function auto git repo
function init_repo(){
    git init
    git add .
    git commit -m "first commit"
    git branch -M main
    git remote add origin git@github.com:Tankono/flutter_app_getx.git
    git push -u origin main
}

function commit(){
    git add .
    git commit -m "update"
    git pull
    git push
}

function create_branch(){
    echo 'create branch'
}

commit
#init_repo