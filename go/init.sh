#!/bin/sh
export TASK_DIR=/tmp/$EXENAME
mkdir $TASK_DIR
rm -rf $TASK_DIR/*
bee pack -p /go/src/$EXENAME  -exr="^[0-9a-f]$" -o  $TASK_DIR
cd $TASK_DIR
tar -zxf $EXENAME.tar.gz
./$EXENAME

