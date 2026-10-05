FROM node:22-bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends git curl jq python3 python3-pytest python3-venv \
    && python3 -m venv /opt/codeswarm-quality \
    && /opt/codeswarm-quality/bin/pip install --no-cache-dir 'pre-commit>=4.3,<5' \
    && ln -s /opt/codeswarm-quality/bin/pre-commit /usr/local/bin/pre-commit \
    && npm install --global opencode-ai \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
