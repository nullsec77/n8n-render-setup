#!/bin/bash
sleep 30
while true; do
  curl -s "${RENDER_EXTERNAL_URL}/healthz" > /dev/null
  sleep 300
done
