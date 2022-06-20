# All The Continuouses

## Description

This folder contains two `Jenkinsfile`:
- The first one in the folder `build`:
    - Build the docker image, tag it and publish it to the docker registry.
- The second one in the folder `deployment`:
    - Use the Docker Hub API to list all the tags available in the registry and generates a selector to specify the image tag to deploy.
    - Select the Kubernetes context.
    - Modify the image tag.
    - Validates the manifest.
    - Apply the manifest.
---

## Credentials needed

| Name | Description | Kind |
| --- | --- | --- |
| **jenkins_github** | Use it for authenticate to GitHub | TOKEN |
| **docker_hub** | Use it for authenticate to Docker hub | USER & TOKEN |

---