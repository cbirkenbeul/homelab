<div align="center">

<img src="https://raw.githubusercontent.com/smbonn2005/HomeOps/main/icons/logo.png" align="center" width="144px" height="144px"/>

### My Home Operations repository :octocat:

_... managed with Flux, Renovate and GitHub Actions_ 🤖


</div>

<div align="center">

[![Discord](https://img.shields.io/discord/673534664354430999?style=for-the-badge&label&logo=discord&logoColor=white&color=blue)](https://discord.gg/k8s-at-home)&nbsp;&nbsp;
<!-- [![Talos](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.csalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dtalos_version&style=for-the-badge&logo=talos&logoColor=white&color=blue&label=%20)](https://www.talos.dev/)&nbsp;&nbsp; -->
[![Kubernetes](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.csalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dkubernetes_version&style=for-the-badge&logo=kubernetes&logoColor=white&color=blue&label=%20)](https://www.talos.dev/)&nbsp;&nbsp;
[![GitHub last commit](https://img.shields.io/github/last-commit/smbonn2005/HomeOps?color=purple&style=for-the-badge)](https://github.com/smbonn2005/HomeOps/commits/main 'Commit History')\
[![GitHub stars](https://img.shields.io/github/stars/smbonn2005/HomeOps?color=green&style=for-the-badge)](https://github.com/smbonn2005/HomeOps/stargazers 'This repo star count')

</div>
<div align="center">

[![Age-Days](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_age_days&style=flat-square&label=Age)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Uptime-Days](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_uptime_days&style=flat-square&label=Uptime)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Node-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_node_count&style=flat-square&label=Nodes)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Pod-Count](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_pod_count&style=flat-square&label=Pods)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![CPU-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_cpu_usage&style=flat-square&label=CPU)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
[![Memory-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_memory_usage&style=flat-square&label=Memory)](https://github.com/kashalls/kromgo/)&nbsp;&nbsp;
<!-- [![Power-Usage](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dcluster_power_usage&style=flat-square&label=Power)](https://github.com/kashalls/kromgo/) -->

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