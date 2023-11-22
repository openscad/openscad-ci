#!/bin/bash

YAML="$1"

NAME="${YAML%.*}"
TEAM="${YAML%%-*}"

if [ ! -f "$YAML" ]
then
	echo "usage: $0 pipeline-config.yml"
	exit 1
fi

./fly -t openscad set-pipeline --team "$TEAM" --pipeline "$NAME" --config "$YAML"
