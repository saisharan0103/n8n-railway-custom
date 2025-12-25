FROM docker.n8n.io/n8nio/n8n:latest-alpine

USER root

RUN apk add --no-cache \
    python3 \
    py3-pip \
    bash

RUN pip3 install --no-cache-dir pdfplumber

USER node
