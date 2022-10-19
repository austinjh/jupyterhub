#!/bin/bash

microk8s enable dashboard dns registry istio
microk8s kubectl get all --all-namespaces
alias mkctl="microk8s kubectl"
alias kubectl="microk8s kubectl"
kubectl version
microk8s dashboard-proxy
microk8s stop
microk8s start

#token
eyJhbGciOiJSUzI1NiIsImtpZCI6Imxsc3VNaHF3YW1vTm1FRDZkNzhMb3FFbXcwTlNOX0dnV3NuRVZnZEdhLVUifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJrdWJlLXN5c3RlbSIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VjcmV0Lm5hbWUiOiJtaWNyb2s4cy1kYXNoYm9hcmQtdG9rZW4iLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC5uYW1lIjoiZGVmYXVsdCIsImt1YmVybmV0ZXMuaW8vc2VydmljZWFjY291bnQvc2VydmljZS1hY2NvdW50LnVpZCI6IjkwYzA5OThlLWFhMDgtNDViNS1hNjkxLTg3YjY3ZWQzMzI5NSIsInN1YiI6InN5c3RlbTpzZXJ2aWNlYWNjb3VudDprdWJlLXN5c3RlbTpkZWZhdWx0In0.O3F4MlVPedWLHBFVkPjW-EgXv9Sl6zzHeqbYduOMMEVd8D-zknfCj6hx4eEqVhol7fiPMSVrLeyS1Ii4HUUcooAimmucVIGm8JeCppqOqROtqEOIag8d0DxDOJiNbDgoVSMkaiaFln7LNknhFbxpTsf7NI39YVBHU9HEA8AZlrKeOZVBJNvbaaTy1pTyNBmyMdx9MI3zh2fo7Qu4vXgxXQerNG7jBeBwemQIbu1JUdj5ORrt3v7JJMXLNH4RDnl6_Mm0phnnXWBgL6IIBQ-sq3H5lC0t7yVD3LQdqQeiKN4AKVU4jwTDlZe4qkSJUrqfMfXPrr9K7pzNDOR3TTc8pg