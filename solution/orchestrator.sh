#!/bin/bash

source functions/TaskDao.sh
source functions/fileDb.sh

OPERATION=$1

case $OPERATION in
add)
    saveTaskMasterData $2 $3 $4
;;
getTaskMasterData)
    getTaskMasterData $2
;;
executeTask)
    getTaskScript $2
esac
