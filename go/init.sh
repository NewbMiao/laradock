#!/bin/sh
export TASK_DIR=/tmp/task
mkdir $TASK_DIR
rm -rf $TASK_DIR/*
bee pack -p /go/src/task  -exr="^[0-9a-f]$" -o  $TASK_DIR
cd $TASK_DIR
tar -zxf task.tar.gz
./task

