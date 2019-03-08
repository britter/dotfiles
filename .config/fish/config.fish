## Initialize direnv
eval (direnv hook fish)

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## SDKs ##
set -x JAVA_6_HOME (/usr/libexec/java_home -v 1.6)
set -x JDK6 $JAVA_6_HOME
set -x JAVA_7_HOME (/usr/libexec/java_home -v 1.7)
set -x JDK7 $JAVA_7_HOME
set -x JAVA_8_HOME (/usr/libexec/java_home -v 1.8)
set -x JDK8 $JAVA_8_HOME
set -x JAVA_9_HOME (/usr/libexec/java_home -v 9)
set -x JDK9 $JAVA_9_HOME
set -x JAVA_10_HOME (/usr/libexec/java_home -v 10)
set -x JDK10 $JAVA_10_HOME
set -x JAVA_11_HOME (/usr/libexec/java_home -v 11)
set -x JDK11 $JAVA_11_HOME
set -q JAVA_HOME; or set -x JAVA_HOME $JAVA_11_HOME

set -x GOPATH ~/.gopath

set PATH /usr/local/bin $JAVA_HOME/bin $HOME/.cargo/bin $HOME/.local/bin $PATH

## rbenv
rbenv rehash >/dev/null ^&1

## nvm
set -x NVM_HOME $HOME/.nvm

set -x SVN_EDITOR vim

# gpg signing
set -x GPG_TTY (tty)
