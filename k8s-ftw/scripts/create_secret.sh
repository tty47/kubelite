#!/bin/bash
# Description:
# The following script creates a secret as a docker-registry type which we
# will use for authenticate agains the registry.
USER=$1
PASS=$2
EMAIL=$3

# Verify we don't have empty values 
if [[ -z "${USER}" ]]; then
    echo "User (1st argument) is empty"
elif [[ -z "${PASS}" ]]; then
    echo "Passord (2nd argument) is empty"
elif [[ -z "${EMAIL}" ]]; then
    echo "Email (3rd argument) is empty"
else
    # The following command creates a secret in the namespace specified
    kubectl create secret docker-registry docker-reg -n kubelite \
        --docker-username=${USER} \
        --docker-password=${PASS} \
        --docker-email=${EMAIL}
fi
