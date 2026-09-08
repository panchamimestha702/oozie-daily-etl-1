#!/bin/bash

echo "ETL Extract Step Started"

hdfs dfs -mkdir -p /user/cloudera/oozie_etl/input

echo "101,John,50000"
echo "102,Ravi,60000"
echo "103,Anu,55000"
echo "104,Priya,70000" > employee.csv

hdfs dfs -put -f employee.csv /user/cloudera/oozie_etl/input/

echo "Extract Step Completed"
