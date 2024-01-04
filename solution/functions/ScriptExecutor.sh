function executeScript() {
    local SCRIPT_PATH=$1
    local LOG_FILE=$2
    ./${SCRIPT_PATH} > ${LOG_FILE}
}