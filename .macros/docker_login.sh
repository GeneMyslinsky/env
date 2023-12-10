#!/bin/bash
context=$(kubectl config view --minify -o jsonpath="{.clusters[*].name}")
region=$(echo $context | awk -F':' '{print $4}')
account=$(echo $context | awk -F':' '{print $5}')
cluster=$(echo $context | awk -F'/' '{print $2}')
aws ecr get-login-password --region $region | docker login --username AWS --password-stdin $account.dkr.ecr.$region.amazonaws.com
