#!/bin/bash

HISTFILE=~/.bash_history
set -o history

# history | less | sed 's/ *[0-9]*  //' | sort  
history | less | wc -l

