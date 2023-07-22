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

function run_web(){
    echo 'Run Web...'
    flutter run -d chrome
}

run_web
# add_module_getx
#init_repo