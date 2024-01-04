function saveRecordInTable() {
    local record="$1"
    local table=$2
    echo "[${record}]"
    echo "${record}" >> ./db/${table}.csv
}

function getRecordsInTable() {
    local column=$1
    local searchValue=$2
    local table=$3

    csvsql --query "SELECT * FROM ${table} where ${column}='${searchValue}'" ./db/${table}.csv
}