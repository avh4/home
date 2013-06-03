#!/bin/bash

if [ -d "$HOME/android-sdk-macosx" ]; then
	export ANDROID_HOME="$HOME/android-sdk-macosx"
	export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools"
fi

if [ -z "$ANDROID_HOME" ]; then
	echo "$BASH_SOURCE: No Android SDK found" >&2
fi

