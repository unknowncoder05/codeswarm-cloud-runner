FROM node:22-bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends git curl jq python3 python3-pytest \
    && npm install --global opencode-ai \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

