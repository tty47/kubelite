# Kubelite

## Description

This repository contains all the resources to run `litecoin-0.18.1` in a Kubernetes cluster.

We use [docker](https://github.com/jrmanes/kubelite/blob/master/docker-ayes/Dockerfile) to create the container.

And some [Kubernetes resources](https://github.com/jrmanes/kubelite/tree/master/k8s-ftw) to run it.

We use Jenkins as a CI/CD server, we have a couple of `Jenkinsfile` that help us to [build](https://github.com/jrmanes/kubelite/tree/master/all-the-continuouses/build/Jenkinsfile) and [deploy](https://github.com/jrmanes/kubelite/tree/master/all-the-continuouses/deployment/Jenkinsfile) the containers.


I have created some scripts that help us to make some actions quickly like, create the Kubernetes secret to access to the Docker Hub registry or install Jenkins and the packages needed to execute the pipelines.

You can find them [here](https://github.com/jrmanes/kubelite/tree/master/k8s-ftw/scripts).

---

Jose Ramon Mañes

---