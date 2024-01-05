#!/bin/bash

echo "TASK_NAME,TRIGGER_TYPE,TASK_SCRIPT_PATH" > ../../db/TaskMaster.csv
echo "TASK_NAME,EXECUTION_NO,LOG_LOCATION" > ../../db/TaskExecutionHistory.csv
echo "0" > ../../logs/execution_no
pushd ../..
    ./orchestrator.sh add task1 manual test/scenario1/example1.sh
    ./orchestrator.sh add task2 manual test/scenario1/example2.sh
    ./orchestrator.sh executeTask task1
    ./orchestrator.sh executeTask task2
    ./orchestrator.sh executeTask task2
    ./orchestrator.sh getTaskExecutionHistory task1
    ./orchestrator.sh getTaskExecutionHistory task2
    ./orchestrator.sh getTaskExecutionLogs task1 1
    ./orchestrator.sh getTaskExecutionLogs task2 2
    ./orchestrator.sh getTaskExecutionLogs task2 3
    ./orchestrator.sh add task3 scheduled test/scenario1/example3.sh
    ./orchestrator.sh executeTask task3
    ./orchestrator.sh add task4 scheduled test/scenario1/example4.sh
    ./orchestrator.sh executeTask task4
popd 