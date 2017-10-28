#!/bin/bash
GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" \
git clone $REPO site && \
cd /root/site && \
sh ./build.sh && \
cd /root/site && \
sh ./push.sh
