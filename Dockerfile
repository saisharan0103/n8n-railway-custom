FROM n8nio/n8n:dev

USER root

# Install system packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    bash \
  && rm -rf /var/lib/apt/lists/*

# Install pdfplumber
RUN pip3 install --no-cache-dir pdfplumber

USER node
