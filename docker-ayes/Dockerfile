FROM ubuntu:22.04

# Litecoin version
ENV LITECOIN_VERSION=0.18.1

# User data
ARG UID=10001
ARG GID=10001
ARG USR_NAME=litecoin

# Create the group and the user, provide GID & UID
RUN groupadd -g ${GID} ${USR_NAME} \
    && adduser -u ${UID} \
       --gid ${GID} \
       --disabled-login \
       --disabled-password \
       --gecos "" \
       --home /home/${USR_NAME} ${USR_NAME}

RUN apt update \
    && apt install -y --no-install-recommends \
        ca-certificates \
        curl \
        wget \
        gpg \
        gpg-agent \
        gnupg

USER ${USR_NAME}

WORKDIR /home/${USR_NAME}/

# Download & Verify the checksum
# https://download.litecoin.org/litecoin-0.18.1/SHA256SUMS.asc
# https://download.litecoin.org/litecoin-0.18.1/linux/
RUN wget https://download.litecoin.org/litecoin-${LITECOIN_VERSION}/linux/litecoin-${LITECOIN_VERSION}-x86_64-linux-gnu.tar.gz \
    && wget https://download.litecoin.org/litecoin-${LITECOIN_VERSION}/SHA256SUMS.asc -O litecoin-${LITECOIN_VERSION}-linux-signatures.asc \
    && grep $(sha256sum litecoin-${LITECOIN_VERSION}-x86_64-linux-gnu.tar.gz | awk '{ print $1 }') litecoin-${LITECOIN_VERSION}-linux-signatures.asc \
    && tar -xzf litecoin-${LITECOIN_VERSION}-x86_64-linux-gnu.tar.gz \
    && rm litecoin-${LITECOIN_VERSION}-x86_64-linux-gnu.tar.gz \
          litecoin-${LITECOIN_VERSION}-linux-signatures.asc 

EXPOSE 9333
CMD ./litecoin-0.18.1/bin/litecoind
