#!/bin/bash
docker run --rm \
           -e "REPO=$1" \
           -v ~/.ssh/id_rsa:/root/.ssh/id_rsa:ro \
           -v ~/.aws:/root/.aws:ro \
           stut/update-jekyll-site:latest /root/entrypoint.sh
