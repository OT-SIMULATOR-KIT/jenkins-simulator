#!/bin/bash

echo "TASK_NAME,TRIGGER_TYPE,TASK_SCRIPT_PATH" > ../../db/TaskMaster.csv
echo "TASK_NAME,EXECUTION_NO,LOG_LOCATION" > ../../db/TaskExecutionHistory.csv
pushd ../..
    ./orchestrator.sh add task1 manual test/scenario1/example1.sh
    ./orchestrator.sh add task2 manual test/scenario1/example2.sh
    ./orchestrator.sh executeTask task1
    ./orchestrator.sh executeTask task2
    ./orchestrator.sh executeTask task2
    ./orchestrator.sh add task3 scheduled test/scenario1/example3.sh
    ./orchestrator.sh executeTask task3
    ./orchestrator.sh add task4 scheduled test/scenario1/example4.sh
    ./orchestrator.sh executeTask task4
popd 