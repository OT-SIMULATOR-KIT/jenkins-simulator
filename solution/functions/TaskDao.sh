TASK_MASTER_TABLE=TaskMaster

function saveTaskMasterData() {
    local TASK_NAME=$1
    local TRIGGER_TYPE=$2
    local TASK_SCRIPT_PATH=$3

    echo "User wants to save ${TASK_SCRIPT_PATH} as ${TASK_NAME} in our system with trigger type ${TRIGGER_TYPE}"

    saveRecordInTable "${TASK_NAME},${TRIGGER_TYPE},${TASK_SCRIPT_PATH}" ${TASK_MASTER_TABLE}
}

function getTaskMasterData() {
    local TASK_NAME=$1

    echo "User wants to get details of task: ${TASK_NAME}"
    getRecordsInTable TASK_NAME ${TASK_NAME} ${TASK_MASTER_TABLE}
}