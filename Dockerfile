FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install system deps (Debian)
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Install pdfplumber
RUN pip3 install --no-cache-dir pdfplumber

USER node
