#!/bin/bash

echo "ETL Load Step Started"

hdfs dfs -mkdir -p /user/cloudera/oozie_etl/output

hdfs dfs -cp -f /user/cloudera/oozie_etl/transform/transformed.csv \
/user/cloudera/oozie_etl/output/

echo "Load Step Completed"
echo "ETL Job Completed Successfully"
