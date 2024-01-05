TASK_MASTER_TABLE=TaskMaster

function saveTaskMasterData() {
    local TASK_NAME=$1
    local TRIGGER_TYPE=$2
    local TASK_SCRIPT_PATH=$3

    logInfoMessage "Operation:Save Task Script Path:${TASK_SCRIPT_PATH} Task Name:${TASK_NAME} Trigger Type:${TRIGGER_TYPE}"
    saveRecordInTable "${TASK_NAME},${TRIGGER_TYPE},${TASK_SCRIPT_PATH}" ${TASK_MASTER_TABLE}
}

function getTaskMasterData() {
    local TASK_NAME=$1

    logInfoMessage "Operation:Get Task Task Name:${TASK_NAME}"
    getRecordsInTableForAColumn TASK_NAME ${TASK_NAME} ${TASK_MASTER_TABLE}
}

function getTaskScript() {
    local TASK_NAME=$1
    logInfoMessage "Operation:Get Task Script Task Name:${TASK_NAME}"
    getColumnValuesInTableForAColumn TASK_NAME TASK_SCRIPT_PATH ${TASK_NAME} ${TASK_MASTER_TABLE}
}