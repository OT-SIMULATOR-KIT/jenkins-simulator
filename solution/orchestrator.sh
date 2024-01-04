#!/bin/bash

source functions/TaskDao.sh
source functions/fileDb.sh

OPERATION=$1

case $OPERATION in
add)
    echo "User wants to add task"
    saveTaskMasterData $2 $3 $4
;;
getTaskMetaData)
    echo "User wants to get task metadata"
    getTaskMasterData $2
;;
executeTask)
    echo "User wants to execute task"
esac

# executeTask $2