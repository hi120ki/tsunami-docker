#!/bin/bash

JAR=$(find "${HOME}/tsunami/repos/tsunami-security-scanner" -name 'tsunami-main-*-cli.jar')
JAR_FILENAME=$(basename -- "${JAR}")

cat <<__EOT__
ip-v4-target   : $1
output-filename: $2

__EOT__

java -cp "/root/tsunami/${JAR_FILENAME}:/root/tsunami/plugins/*" \
  -Dtsunami-config.location=/root/tsunami/tsunami.yaml \
  com.google.tsunami.main.cli.TsunamiCli \
  --ip-v4-target=$1 \
  --scan-results-local-output-format=JSON \
  --scan-results-local-output-filename=/out/$2
