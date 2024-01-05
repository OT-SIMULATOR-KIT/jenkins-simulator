#!/bin/bash
LOG_BASE_DIR=./logs

LOG_FILE=${LOG_BASE_DIR}/orchestrator.log
source functions/TaskDao.sh
source functions/fileDb.sh
source functions/ScriptExecutor.sh
source functions/logger.sh

OPERATION=$1

case $OPERATION in
add)
    saveTaskMasterData $2 $3 $4
;;
getTaskMasterData)
    getTaskMasterData $2
;;
executeTask)
    TASK_NAME=$2
    scriptPath=`getTaskScript ${TASK_NAME}`
    TASK_LOG_DIR=${LOG_BASE_DIR}/${TASK_NAME}
    mkdir -p ${TASK_LOG_DIR}
    TASK_LOG_FILE=${TASK_LOG_DIR}/1.log
    executeScript ${scriptPath} ${TASK_LOG_FILE}
esac
