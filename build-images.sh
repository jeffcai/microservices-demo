#!/bin/bash

set -e

docker build -t us.icr.io/cloudnative-lab/config-server ./config-server
docker build -t us.icr.io/cloudnative-lab/service-registry ./service-registry
docker build -t us.icr.io/cloudnative-lab/turbine-server ./turbine-server
docker build -t us.icr.io/cloudnative-lab/monitor-dashboard ./monitor-dashboard
docker build -t us.icr.io/cloudnative-lab/auth-service ./auth-service
docker build -t us.icr.io/cloudnative-lab/account-service ./account-service
docker build -t us.icr.io/cloudnative-lab/cloud-gateway ./cloud-gateway

docker rmi $(docker images -f "dangling=true" -q)
