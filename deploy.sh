#!/bin/bash
oc project default
# deploy the app and service
oc apply -f app/deployment.yaml
oc apply -f app/service.yaml
oc expose service example-app
# deploy prometheus
# bundle from prometheus operator
oc create -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/master/bundle.yaml
oc apply -f Prometheus/prometheus.yaml
oc apply -f Prometheus/prometheus-service.yaml
oc expose service prometheus
# create serviceMonitor
oc apply -f Prometheus/service-monitor.yaml
# rbac files
oc apply -f Prometheus/service-account.yaml
oc apply -f Prometheus/clusterRole.yaml
oc apply -f Prometheus/clusterRoleBinding.yaml
# get the routes

EXAMPLE=$(oc get routes | grep example | awk '{print $2}')
PROMETHEUS=$(oc get routes | grep prometheus | awk '{print $2}')
echo " "
echo "############################################################################"
echo " "
echo "Example-app route"
echo "http://${EXAMPLE}"
echo " "
echo "Prometheus route" 
echo "http://${PROMETHEUS}"