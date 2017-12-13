alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## SDKs ##
set -x JAVA_7_HOME (/usr/libexec/java_home -v 1.7)
set -x JAVA_8_HOME (/usr/libexec/java_home -v 1.8)
set -x JAVA_9_HOME (/usr/libexec/java_home -v 9)
set -x JAVA_HOME $JAVA_8_HOME

set -x GOPATH ~/.gopath

set PATH /usr/local/bin $JAVA_HOME/bin $HOME/.cargo/bin $PATH

## rbenv
rbenv rehash >/dev/null ^&1

## nvm
set -x NVM_HOME $HOME/.nvm

set -x MAVEN_OPTS "-Xmx512m -XX:MaxPermSize=128m"

set -x SVN_EDITOR vim

# gpg signing
set -x GPG_TTY (tty)
