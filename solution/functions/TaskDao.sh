TASK_MASTER_TABLE=../db/TaskMaster.db

function saveTaskMasterData() {
    local TASK_NAME=$1
    local TRIGGER_TYPE=$2
    local TASK_SCRIPT_PATH=$3

    echo "User wants to save ${TASK_SCRIPT_PATH} as ${TASK_NAME} in our system with trigger type ${TRIGGER_TYPE}"

    saveRecordInTable "${TASK_NAME},${TRIGGER_TYPE},${TASK_SCRIPT_PATH}" ${TASK_MASTER_TABLE}
}