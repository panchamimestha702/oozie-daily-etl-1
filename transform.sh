#!/bin/bash

echo "ETL Transform Step Started"

hdfs dfs -mkdir -p /user/cloudera/oozie_etl/transform

hdfs dfs -cat /user/cloudera/oozie_etl/input/employee.csv | \
awk -F',' '$3 >= 55000 {print $0}' > transformed.csv

hdfs dfs -put -f transformed.csv /user/cloudera/oozie_etl/transform/

echo "Transform Step Completed"
