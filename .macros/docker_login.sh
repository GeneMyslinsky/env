#!/bin/bash

aws ecr get-login-password --region $1 | docker login --username AWS --password-stdin $2.dkr.ecr.$1.amazonaws.com
