#!/bin/sh
#some function support create fast project fluuter
function create_prj(){
    prj_name=$1
    echo 'create template:'.$prj_name
}

function add_template(){
    template_name=$1
    echo 'create template:'.$template_name
}

function add_module_getx(){
    echo 'create branch'
}

function add_screen(){
    echo 'create branch'
}

function reset_app(){
    echo 'Reset app...'
    rm -f android
    rm -f ios
    flutter create .
    
}

function run_web(){
    echo 'Run Web...'
    flutter run -d chrome
}
#Use for MacOS
#Some process will be consume the resource of the pc, we will kill them for smooth to
#run flutter project
function clean_pc(){
    echo 'kill some process unused'
    # ps aux
    # mds_store
    # pkill -9 387
    # sudo killall -s SIGINT "mds_store"
    # sudo kill -9 387


    ps aux | grep "java"



}

# clean_pc
run_web
# add_module_getx