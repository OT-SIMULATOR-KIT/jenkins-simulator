#!/bin/bash

source functions/TaskDao.sh
source functions/fileDb.sh
source functions/ScriptExecutor.sh

OPERATION=$1

case $OPERATION in
add)
    saveTaskMasterData $2 $3 $4
;;
getTaskMasterData)
    getTaskMasterData $2
;;
executeTask)
    scriptPath=`getTaskScript $2`
    executeScript ${scriptPath}
esac
