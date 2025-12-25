FROM docker.n8n.io/n8nio/n8n:alpine

USER root

# Install Python + pip
RUN apk add --no-cache \
    python3 \
    py3-pip \
    bash

# Install pdfplumber
RUN pip3 install --no-cache-dir pdfplumber

USER node
