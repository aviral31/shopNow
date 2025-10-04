#!/usr/bin/bash
# scripts/build-and-push.sh
# Usage: ./scripts/build-and-push.sh [registry_prefix] [tag]
# Example: ./scripts/build-and-push.sh your.registry.example.com/shopnow dev

set -euo pipefail

REGISTRY=${1:-your.registry.example.com/shopnow}
TAG=${2:-dev}
DOCKER_OPTS=${DOCKER_OPTS:-}


build_and_push() {
  local dir=$1
  local name=$2
  echo "-> Building ${name} from ${dir}"
  docker build ${DOCKER_OPTS} -t "${REGISTRY}/${name}:${TAG}" "${dir}"
  echo "-> Pushing ${REGISTRY}/${name}:${TAG}"
  docker push "${REGISTRY}/${name}:${TAG}"
  echo
}

# Validate docker available
if ! command -v docker >/dev/null 2>&1; then
  echo "ERROR: docker not found in PATH"
  exit 2
fi

# Build components
build_and_push "./frontend" "frontend"
build_and_push "./backend" "backend"
build_and_push "./admin" "admin"

echo "All images built and pushed:"
echo "  ${REGISTRY}-frontend:${TAG}"
echo "  ${REGISTRY}-backend:${TAG}"
echo "  ${REGISTRY}-admin:${TAG}"

