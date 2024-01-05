TASK_EXECUTION_HISTORY_TABLE=TaskExecutionHistory
function saveTaskExecutionData() {
    local TASK_NAME=$1
    local EXECUTION_NO=$2
    local LOG_LOCATION=$3

    logInfoMessage "Operation:Save Task Execution Task Name:${TASK_NAME} Execution No:${EXECUTION_NO} Log Location:${LOG_LOCATION}"
    saveRecordInTable "${TASK_NAME},${EXECUTION_NO},${LOG_LOCATION}" ${TASK_EXECUTION_HISTORY_TABLE}
}