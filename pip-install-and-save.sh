#!/bin/bash

function pipis {
  local PYTHON_LIB=$1
  if [ -z "$2" ]
  then
    local REQUIREMENTS_FILE=requirements.txt
  else
    local REQUIREMENTS_FILE=$2
  fi
  pip install "$PYTHON_LIB" && pip freeze | grep "$PYTHON_LIB" >> "$REQUIREMENTS_FILE"
}