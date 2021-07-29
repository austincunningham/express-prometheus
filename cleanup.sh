#!/bin/bash
oc project default
# delete the app and service
oc delete -f app/deployment.yaml
oc delete -f app/service.yaml
oc delete route example-app

# delete prometheus
# bundle from prometheus operator
oc delete -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/master/bundle.yaml
oc delete -f Prometheus/prometheus.yaml
oc delete -f Prometheus/prometheus-service.yaml
oc delete route prometheus
# delete serviceMonitor
oc delete -f Prometheus/service-monitor.yaml
# rbac files
oc delete -f Prometheus/service-account.yaml
oc delete -f Prometheus/clusterRole.yaml
oc delete -f Prometheus/clusterRoleBinding.yaml
# get the routes

