function saveRecordInTable() {
    local record="$1"
    local table=$2

    echo "${record}" >> ${table}
}