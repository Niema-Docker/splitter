# Minimal Docker image for splitter using Debian base
FROM debian:stable-slim

# install splitter
RUN apt-get update && \
    apt-get install -y wget && \
    wget -qO /usr/local/bin/splitter "https://github.com/qiita-spots/qp-knight-lab-processing/raw/refs/heads/main/src/sequence_processing_pipeline/scripts/splitter" && \
    chmod a+x /usr/local/bin/splitter
