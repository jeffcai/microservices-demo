#!/bin/bash

set -e

docker push us.icr.io/cloudnative-lab/config-server
docker push us.icr.io/cloudnative-lab/service-registry
docker push us.icr.io/cloudnative-lab/turbine-server
docker push us.icr.io/cloudnative-lab/monitor-dashboard
docker push us.icr.io/cloudnative-lab/auth-service
docker push us.icr.io/cloudnative-lab/account-service
docker push us.icr.io/cloudnative-lab/cloud-gateway
