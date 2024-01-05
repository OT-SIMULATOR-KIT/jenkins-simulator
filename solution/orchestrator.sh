#!/bin/bash
LOG_BASE_DIR=./logs
LOG_FILE=${LOG_BASE_DIR}/orchestrator.log

EXECUTION_NO=1
source functions/TaskDao.sh
source functions/fileDb.sh
source functions/ScriptExecutor.sh
source functions/logger.sh
source functions/TaskExecutionDao.sh
source functions/function.sh
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
    executeScript ${TASK_NAME}
;;
getTaskExecutionHistory)
    getTaskExecutionHistory $2
;;
getTaskExecutionLogs)
    printTaskExecutionLog $2 $3
;;
esac
pause
