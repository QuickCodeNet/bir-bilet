#!/usr/bin/env bash
set -euo pipefail

# Starts databases, Elasticsearch, and Kafka only — use with host-side dotnet debug.
cd "$(dirname "$0")/.."

if [[ ! -f .env ]]; then
  if [[ -f .env.example ]]; then
    cp .env.example .env
  fi
fi

INFRA_SERVICES=(
  bir-bilet-pg-data
  bir-bilet-mysql-data
  bir-bilet-sql-data
  bir-bilet-elasticsearch
  bir-bilet-kibana
  bir-bilet-zookeeper
  bir-bilet-kafka
  bir-bilet-kafdrop
)

docker compose --env-file .env up -d "${INFRA_SERVICES[@]}" "$@"

echo ""
echo "Infrastructure containers started. Debug a single service on the host via LaunchSettings,"
