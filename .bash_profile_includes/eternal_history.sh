#!/bin/bash

export HISTTIMEFORMAT="%F %r "
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND}"' echo $USER "$(history 1)" >> ./.bash_eternal_history'
