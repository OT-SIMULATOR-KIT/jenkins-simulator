function executeScript() {
    local TASK_NAME=$1
    logInfoMessage "Operation:Execute Task Task Name:${TASK_NAME}"

    scriptPath=`getTaskScript ${TASK_NAME}`
    local TASK_LOG_DIR=${LOG_BASE_DIR}/${TASK_NAME}
    mkdir -p ${TASK_LOG_DIR}
    EXECUTION_NO=`getNextExecutionNo`
    TASK_LOG_FILE=${TASK_LOG_DIR}/${EXECUTION_NO}.log
    logInfoMessage "Operation:Execute Task Task Name:${TASK_NAME} Task Script:${scriptPath} Log File: ${TASK_LOG_FILE}"
    ./${scriptPath} > ${TASK_LOG_FILE}
}

function getNextExecutionNo() {
    local TASK_LOG_DIR=$1
    local EXECUTION_NO=`cat ${LOG_BASE_DIR}/execution_no`
    ((EXECUTION_NO++))
    echo $EXECUTION_NO > ${LOG_BASE_DIR}/execution_no
    echo $EXECUTION_NO
}