alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## SDKs ##
[ -s "/Users/bene/.jabba/jabba.fish" ]; and source "/Users/bene/.jabba/jabba.fish"
set -x JAVA_6_HOME (jabba which 1.6.65 --home)
set -x JDK6 $JAVA_6_HOME
set -x JAVA_7_HOME (jabba which zulu@1.7.222 --home)
set -x JDK7 $JAVA_7_HOME
set -x JAVA_8_HOME (jabba which zulu@1.8.212 --home)
set -x JDK8 $JAVA_8_HOME
set -x JAVA_9_HOME (jabba which openjdk@1.9.0-4 --home)
set -x JDK9 $JAVA_9_HOME
set -x JAVA_10_HOME (jabba which openjdk@1.10.0-2 --home)
set -x JDK10 $JAVA_10_HOME
set -x JAVA_11_HOME (jabba which adopt@1.11.0-4 --home)
set -x JDK11 $JAVA_11_HOME
set -x JAVA_12_HOME (jabba which openjdk@1.12.0-1 --home)
set -x JDK12 $JAVA_12_HOME

set -x GOPATH ~/.gopath

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $HOME/.cargo/bin $HOME/.local/bin $PATH

set -x SVN_EDITOR vim

# gpg signing
set -x GPG_TTY (tty)
