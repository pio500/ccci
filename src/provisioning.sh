#!/bin/bash

sleep 10
## Define the Variables
#Target_name="tutorial"
#User="test"
#Password="test"
#Concourse_server="http://127.0.0.1:8080"

Target_name=$CONCOURSE_TARGET_NAME
User=$CONCOURSE_USER
Password=$CONCOURSE_PASSWORD
Concourse_server=$CONCOURSE_WEB_SERVER

#Pipeline_basic="./pipeline.yml"
Pipeline_name="scratch"

## Create a new Target via Admin(Default Admin: test/test)
##fly -t $Target_name login -c $Concourse_server -n main --username=$User --password=$Password

## Show Target list
##fly targets


## Purge
#fly -t $Target_name destroy-pipeline -p bluegreen
#fly -t $Target_name destroy-pipeline -p canary

## Setup Default sample pipeline
#fly -t $Target_name set-pipeline -c $Pipeline_basic -p $Pipeline_name -n

## Create a new pipeline
#cd /pipelines
#fly -t $CONCOURSE_TARGET_NAME set-pipeline -p $CONCOURSE_DEFAULT_PIPELINE -c pipeline.yml -l credentials.yml  --non-interactive

## You can Unpause directly before the UI connect
#fly -t $CONCOURSE_TARGET_NAME unpause-pipeline -p $CONCOURSE_DEFAULT_PIPELINE

#fly -t $Target_name set-pipeline -p bluegreen -c ./ci/pipeline-bluegreen.yml -l ../ci-credentials-online.yml  --non-interactive
#fly -t $Target_name set-pipeline -p canary -c ./ci/pipeline-canary.yml -l ../ci-credentials-online.yml  --non-interactive

#tail -f /var/log/lastlog


## Please make sure the variable as below
#declare -x AIRPLAINE_PORT
#declare -x AIRPLAINE_USER
#declare -x AIRPLAINE_PASSWORD
#declare -x CONCOURSE_WEB_SERVER

## Get airplane

echo $CONCOURSE_WEB_SERVER
## Please make sure the Env. variable such as this config file ./docker-compose-server.yml to below
/usr/bin/airplane --password="$AIRPLAINE_PASSWORD" --user="$AIRPLAINE_USER" --concourse_server="$CONCOURSE_WEB_SERVER" --port="$AIRPLAINE_PORT"
