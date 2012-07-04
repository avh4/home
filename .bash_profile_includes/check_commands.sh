#!/bin/bash

for i in wget git curl gdate mate; do
	if ! which "$i" >/dev/null; then
		echo "$0: Command not found on PATH: $i" >&2
	fi
done
