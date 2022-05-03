#!/usr/bin/env bash

set -o errexit

PROJECT_ROOT_DIR=$(dirname "$(dirname "$(readlink -f "$0")")")

TEMPORARY_CONFIG_FILE=$(mktemp)

sed -i "s/{{PROJECT_ROOT_DIR}}/${PROJECT_ROOT_DIR}/" kubernetes/k3d/config.yaml > "${TEMPORARY_CONFIG_FILE}"

k3d cluster create \
  --config "${TEMPORARY_CONFIG_FILE}"