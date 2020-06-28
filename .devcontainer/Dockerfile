FROM openjdk:11-buster

# Configure apt
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y install apt-utils && \
    apt-get -y install \
        git \
        openssh-client \
        less \
        iproute2 \
        procps \
        curl \
        lsb-release \
        make \
    && \
    # Clean up
    apt-get autoremove -y \
        && apt-get clean -y \
        && rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND=dialog

# Install Google Java Format
ENV GJF_VERSION=1.8
ADD https://github.com/google/google-java-format/releases/download/google-java-format-${GJF_VERSION}/google-java-format-${GJF_VERSION}-all-deps.jar /usr/bin/google-java-format-all-deps.jar

# Allow for a consistant java home location for settings - image is changing over time
RUN if [ ! -d "/docker-java-home" ]; then ln -s "${JAVA_HOME}" /docker-java-home; fi
