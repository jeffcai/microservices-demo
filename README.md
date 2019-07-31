# Microservices Demo

Using Spring Cloud to develop microservices application and deploy to Kubernetes.

* Externalized configuration: Spring Cloud Config
* Service registry and discovery: Eureka
* Client side load balancing: Ribbon, Feign
* API gateway: Zuul, Spring Cloud Gateway
* Circuit breaker: Hystrix, Turbine
* Distributed tracing: Sleuth, Zipkin
* Account service: the demo app for getting the users

## Deploy the Demo on IKS

need install git, docker, maven at first

- ceate a cluster on IKS (free cluster is not powerful to deploy the spring cloud tech stack)
- access the cluster page and click the access tab：install cli and configure client
- access Registry to create namespace and login registry
- git clone: https://github.com/jeffcai/microservices-demo
- run the script to pacakge jars at the root of the git repo：mvn -Dmaven.test.skip=true package
- modify build-images.sh to set the image regsitry and run ./build-images.sh to build images
- modify push-images.sh to set the image regsitry and run ./push-images.sh to push images
- modify kubernetes yaml to set the image registry: config-server.yaml, service-registry.yaml, turbine-server.yaml, monitor-dashboard.yaml, auth-service.yaml, account-service.yaml, cloud-gateway.yaml
- run ./deploy-kubenetes.sh script to deploy all workloads
- to run the script to get node port of each service: kubectl get svc 
- try to accesss each service with ```http://<node ip>:<node port>```
