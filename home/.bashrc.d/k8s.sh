# For Kubernetes

# Enable shell command completion for kubectl
if type kubectl > /dev/null 2>&1; then
  source <(kubectl completion bash)
fi

