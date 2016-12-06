#!/usr/bin/env bash

export SPARK_MAJOR_VERSION=2

DRIVER_NAME="wordcount.py"

SPARK_OPTS="--executor-cores 2
    --executor-memory 2G
    --driver-memory 512M
    --conf spark.yarn.max.executor.failures=2
    --conf spark.task.maxFailures=2"

SPARK_MASTER="yarn"


spark-submit $SPARK_OPTS --master $SPARK_MASTER $DRIVER_NAME $@