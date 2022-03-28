#!/bin/bash

_match=$(ps aux | grep "[j]dwp=" | wc -l)

if [ "${_match}" == 1 ]; then
  echo "JDWP found within a Java process"
  exit 1
fi