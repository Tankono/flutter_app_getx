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

init_repo