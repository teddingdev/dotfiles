# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true

alias proxyon='export http_proxy=http://127.0.0.1:7890; export https_proxy=http://127.0.0.1:7890;echo proxy is on!'
alias proxyoff='unset http_proxy; unset https_proxy;echo proxy is off!'

#PATH begin
export GO="$HOME/bin/go"
export V2RAY="$HOME/bin/v2ray"
export JETBRAINS="/opt/jetbrains"
export FLUTTER="$HOME/bin/flutter"
export MACROCURA="$HOME/Documents/Macrocura"
export NWJSSDK_V0_40_2="$HOME/bin/nwjs-sdk-v0.40.2-linux-x64/"

export IDEA="$JETBRAINS/Idea"
export CLION="$JETBRAINS/Clion"
export RIDER="$JETBRAINS/Rider"
export GOLAND="$JETBRAINS/GoLand"
export WEBSTORM="$JETBRAINS/WebStorm"

export PATH="$MACROCURA:$HOME/bin:$V2RAY:$IDEA/bin:$CLION/bin:$RIDER/bin:$GOLAND/bin:$WEBSTORM/bin:$FLUTTER/bin:$GO/bin:$NWJSSDK_V0_40_2:$PATH"
#PATH end

# load nvm begin
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# load nvm end

# load volta begin
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
# load volta end
