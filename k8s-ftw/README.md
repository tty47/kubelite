# K8S FTW

## Description

This folder contains all the Kubernetes resources to run `litecoin-0.18.1`

Resources available:

- **Namespace:** Isolated group of resources.
- **PV:** PersistentVolume, piece of storage in the cluster that has been provisioned by an administrator.
- **PVC:** PersistentVolumeClaim, request for storage by a user.
- **Service:** abstract way to expose an application running.
- **Statefulset:** Manages the deployment and scaling of a set of Pods.

[sources](https://kubernetes.io/docs/)

---

## Credentials needed

| Name | Description | Kind | How to?
| --- | --- | ---  | --- |
| docker-reg | Use it for authenticate to Docker Hub and pul the images | Secret | You can execute the script: [create_secret](https://github.com/jrmanes/kubelite/blob/master/k8s-ftw/scripts/create_secret.sh) |

---