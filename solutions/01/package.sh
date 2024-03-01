#!/bin/bash

# Function to check if a command is available
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Install eksctl if not already installed
if ! command_exists eksctl; then
  echo "Installing eksctl..."
  curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
  sudo mv /tmp/eksctl /usr/local/bin
else
  echo "eksctl is already installed."
fi

# Install kubectl if not already installed
if ! command_exists kubectl; then
  echo "Installing kubectl..."
  sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
  curl --silent --location "https://packages.cloud.google.com/apt/doc/apt-key.gpg" | sudo apt-key add -
  echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
  sudo apt-get update
  sudo apt-get install -y kubectl
else
  echo "kubectl is already installed."
fi

# Install helm if not already installed
if ! command_exists helm; then
  echo "Installing helm..."
  curl --silent --location "https://get.helm.sh/helm-v3.7.1-linux-amd64.tar.gz" | tar xz -C /tmp
  sudo mv /tmp/linux-amd64/helm /usr/local/bin
else
  echo "helm is already installed."
fi

# Install k9s if not already installed
if ! command_exists k9s; then
  echo "Installing k9s..."
  curl --silent --location "https://github.com/derailed/k9s/releases/latest/download/k9s_Linux_x86_64.tar.gz" | tar xz -C /tmp
  sudo mv /tmp/k9s /usr/local/bin
else
  echo "k9s is already installed."
fi

echo "Installation complete!"
