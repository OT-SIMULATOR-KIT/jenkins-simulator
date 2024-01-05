function saveRecordInTable() {
    local record="$1"
    local table=$2
    echo "${record}" >> ./db/${table}.csv
}

function getRecordsInTableForAColumn() {
    local searchColumn=$1
    local searchValue=$2
    local table=$3

    csvsql --query "SELECT * FROM ${table} where ${searchColumn}='${searchValue}'" ./db/${table}.csv | tail -n+2
}

function getColumnValuesInTableForAColumn() {
    local columnSearched=$1
    local columnFetched=$2
    local searchValue=$3
    local table=$4

    csvsql --query "SELECT ${columnFetched} FROM ${table} where ${columnSearched}='${searchValue}'" ./db/${table}.csv | tail -n+2
}