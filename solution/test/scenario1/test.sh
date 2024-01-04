#!/bin/bash

echo "TASK_NAME,TRIGGER_TYPE,TASK_SCRIPT_PATH" > ../../db/TaskMaster.csv

pushd ../..
./orchestrator.sh add task1 manual abc.sh
./orchestrator.sh add task1 manual abc.sh
./orchestrator.sh add task1 scheduled abc.sh
popd 