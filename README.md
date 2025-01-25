<div align="center">

<img src="https://raw.githubusercontent.com/smbonn2005/HomeOps/main/icons/logo.png" align="center" width="144px" height="144px"/>

### My Home Operations repository :octocat:
_... managed with Flux, Renovate and GitHub Actions_ 🤖

</div>

<div align="center">

[![Discord](https://img.shields.io/discord/673534664354430999?style=for-the-badge&label&logo=discord&logoColor=white&color=blue)](https://discord.gg/k8s-at-home)
[![Kubernetes](https://img.shields.io/endpoint?url=https%3A%2F%2Fkromgo.casalani.de%2Fquery%3Fformat%3Dendpoint%26metric%3Dkubernetes_version&style=for-the-badge&logo=kubernetes&logoColor=white&color=blue&label=%20)](https://www.talos.dev/)
[![GitHub last commit](https://img.shields.io/github/last-commit/cbirkenbeul/homelab?color=purple&style=for-the-badge)](https://github.com/cbirkenbeul/homelab/commits/main 'Commit History')
[![GitHub stars](https://img.shields.io/github/stars/cbirkenbeul/homelab?color=green&style=for-the-badge)](https://github.com/cbirkenbeul/homelab/stargazers 'This repo star count')

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
| [NGINX Ingress Controller](https://kubernetes.github.io/ingress-nginx)            | Cluster Ingress controller                                    |
| [Rook-Ceph](https://rook.io/)                                                     | Cloud native distributed block storage for Kubernetes         |
| [Cert-Manager](https://cert-manager.io)                                           | Letsencrypt certificates with Cloudflare DNS                  |
| [ExternalDNS](https://github.com/kubernetes-sigs/external-dns)                    | Configure Cloudflare DNS Servers                              |
| [Kube-Prometheus Stack](https://github.com/prometheus-operator/kube-prometheus)   | Prometheus & Exporters to monitor the cluster                 |
| [Grafana](https://grafana.com)                                                    | Monitoring & Logging Dashboard                                |
| [Alertmanager](https://prometheus.io/docs/alerting/latest/alertmanager)           | Monitoring Alerts                                             |
| [Grafana Loki](https://grafana.com/oss/loki)                                      | Log aggregation system                                        |
| [Kubernetes Metrics Server](https://github.com/kubernetes-sigs/metrics-server)    | Source of container resource metrics for Kubernetes           |

## ☁️ Cloud Dependencies

While most of my infrastructure and workloads are self-hosted I do rely upon the cloud for certain key parts of my setup. This saves me from having to worry about two things. (1) Dealing with chicken/egg scenarios and (2) services I critically need whether my cluster is online or not.


| Service                                     | Use                                                               | Cost           |
|---------------------------------------------|-------------------------------------------------------------------|----------------|
| [1Password](https://1password.com/)         | Secrets with [External Secrets](https://external-secrets.io/)     | ~€80/yr        |
| [NetCaup](https://www.netcup.de/)           | Domain                                                            | ~€5/yr         |
| [GitHub](https://github.com/)               | Hosting this repository and continuous integration/deployments    | Free           |
|                                             |                                                                   | Total: ~€7/mo  |

---

## 🔧 Hardware

### Main Kubernetes Cluster

| Name  | Device         | CPU       | OS Disk   | Data Disk | RAM  | OS    | Purpose           |
|-------|----------------|-----------|-----------|-----------|------|-------|-------------------|
| kube-01 | Dell 5090   | i5-10500T | 256 GB NVME | 128 GB SSD  | 32 GB | Talos | k8s control-plane, worker |
| kube-02 | Dell 5090   | i5-10500T | 256 GB NVME | 128 GB SSD  | 32 GB | Talos | k8s control-plane, worker |
| kube-03 | Dell 5090   | i5-10500T | 256 GB NVME | 128 GB SSD  | 32 GB | Talos | k8s control-plane, worker |

### Networking/UPS Hardware

| Device                      | Purpose          |
|-----------------------------|------------------|
| Lenovo M920q (opnsense)     | Network - Router |
| MikroTik CRS328-24P-4S+     | Network - Switch |
| Cyberpower USV OR600ERM     | UPS              |

## :robot:&nbsp; Automation

[Renovate](https://www.whitesourcesoftware.com/free-developer-tools/renovate) Bot makes sure the components are never outdated.

It creates PullRequests when Helm charts or Docker images have newer versions available and even keeps Flux and k3s up-to-date.

## :handshake:&nbsp; Thanks

Big shout out to [k8s@home](https://github.com/k8s-at-home) and everyone from [awesome-home-kubernetes](https://github.com/k8s-at-home/awesome-home-kubernetes) for the inspiration :heart: