#!/bin/bash

#source export_ec2.sh credentials.csv

CREDENTIALS=$(tail -1 $@)

export AWS_ACCESS_KEY_ID=`echo $CREDENTIALS | cut -d',' -f2 | tr -d '\r'`
export AWS_ACCESS_KEY=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=`echo $CREDENTIALS | cut -d',' -f3 | tr -d '\r'`
export AWS_SECRET_KEY=$AWS_SECRET_ACCESS_KEY
