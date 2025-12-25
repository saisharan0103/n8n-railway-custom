# n8n latest stable
FROM docker.n8n.io/n8nio/n8n:latest

USER root

# ---- System deps ----
RUN apk add --no-cache \
  python3 \
  py3-pip \
  bash

# ---- Install pdfplumber globally ----
RUN pip3 install --no-cache-dir pdfplumber

# ---- FIX: create writable directory for n8n binary export ----
RUN mkdir -p /data/tmp \
  && chown -R node:node /data

USER node
