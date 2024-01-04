#!/bin/bash

echo "TASK_NAME,TRIGGER_TYPE,TASK_SCRIPT_PATH" > ../../db/TaskMaster.csv

pushd ../..
./orchestrator.sh add task1 manual example1.sh
./orchestrator.sh add task2 manual example1.sh
./orchestrator.sh add task3 scheduled example2.sh
popd 