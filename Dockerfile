FROM docker.n8n.io/n8nio/n8n

USER root

# Install Python + pip
RUN apk add --no-cache python3 py3-pip

# Allow pip to install into system python (PEP 668 override)
RUN pip3 install --no-cache-dir --break-system-packages pdfplumber

USER node
