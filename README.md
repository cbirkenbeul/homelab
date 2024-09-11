[//]: # "renovate: datasource=github-releases depName=k3s-io/k3s"
[![k3s](https://img.shields.io/badge/k8s-v1.27.3+k3s1-orange?style=for-the-badge&logo=kubernetes)](https://k3s.io/)
[![flux](https://img.shields.io/badge/GitOps-Flux-blue?style=for-the-badge&logo=git)](https://fluxcd.io/)
[![renovate](https://img.shields.io/badge/renovate-enabled-brightgreen?style=for-the-badge&logo=renovatebot)](https://github.com/renovatebot/renovate)

<div align="center">

[![Age-Days](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_age_days&style=flat-square&label=Age)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Uptime-Days](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_uptime_days&style=flat-square&label=Uptime)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Node-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_node_count&style=flat-square&label=Nodes)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Pod-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_pod_count&style=flat-square&label=Pods)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![CPU-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_cpu_usage&style=flat-square&label=CPU)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Memory-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_memory_usage&style=flat-square&label=Memory)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Power-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_power_usage&style=flat-square&label=Power)](https://github.com/kashalls/kromgo/)

</div>

# k8s clusters backed by Flux v2

Kubernetes clusters using the [GitOps](https://www.weave.works/blog/what-is-gitops-really) tool [Flux](https://fluxcd.io/).  
The Git repository is the driving the state of the Kubernetes clusters.  
The awesome [Flux SOPS integration](https://toolkit.fluxcd.io/guides/mozilla-sops/) is used to encrypt secrets with gpg.

## :computer:&nbsp; Software

The following apps are installed on the clusters.

| Software                                                                          | Purpose                                                       |
| --------------------------------------------------------------------------------- | ------------------------------------------------------------- |
| [Flux2](https://fluxcd.io)                                                        | GitOps Tool managing the cluster                              |
| [Longhorn](https://longhorn.io)                                                   | Persistent Block Storage Provisioner                          |
| [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx)            | Cluster Ingress controller                                    |
| [MetalLB](https://metallb.universe.tf)                                            | Bare metal LoadBalancer                                       |
| [Cert-Manager](https://cert-manager.io)                                           | Letsencrypt certificates with Cloudflare DNS                  |
| [ExternalDNS](https://github.com/kubernetes-sigs/external-dns)                    | Configure Cloudflare DNS Servers                              |
| [kube-vip](https://github.com/kube-vip/kube-vip)                                  | Virtual IP Load-Balancer for Control Plane High Availability  |
| [Kube-Prometheus Stack](https://github.com/prometheus-operator/kube-prometheus)   | Prometheus & Exporters to monitor the cluster                 |
| [Grafana](https://grafana.com)                                                    | Monitoring & Logging Dashboard                                |
| [Alertmanager](https://prometheus.io/docs/alerting/latest/alertmanager)           | Monitoring Alerts                                             |
| [Grafana Loki](https://grafana.com/oss/loki)                                      | Log aggregation system                                        |
| [System Upgrade Controller](https://github.com/rancher/system-upgrade-controller) | Automated k3s upgrades                                        |
| [Descheduler](https://github.com/kubernetes-sigs/descheduler)                     | Evicts pods to optimize scheduling                            |
| [Kubernetes Metrics Server](https://github.com/kubernetes-sigs/metrics-server)    | Source of container resource metrics for Kubernetes           |

## :robot:&nbsp; Automation

[Renovate](https://www.whitesourcesoftware.com/free-developer-tools/renovate) Bot makes sure the components are never outdated.

It creates PullRequests when Helm charts or Docker images have newer versions available and even keeps Flux and k3s up-to-date.

## :handshake:&nbsp; Thanks

Big shout out to [k8s@home](https://github.com/k8s-at-home) and everyone from [awesome-home-kubernetes](https://github.com/k8s-at-home/awesome-home-kubernetes) for the inspiration :heart: