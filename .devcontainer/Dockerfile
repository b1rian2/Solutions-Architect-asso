FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Install AWS CLI, Ruby, Java, and Maven
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        curl \
        unzip \
        ruby-full \
        openjdk-21-jdk \
        maven \
        build-essential \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip aws \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# Fix Ruby gem permissions by setting GEM_HOME for vscode user
ENV GEM_HOME=/home/vscode/.gem
ENV PATH=$GEM_HOME/bin:$PATH

# Install bundler for vscode user
USER vscode
RUN gem install bundler
USER root
