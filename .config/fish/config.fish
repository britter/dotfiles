alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

set -x LANG en_US.utf-8
set -x LC_ALL C

## SDKs ##
set -x JDK8 "$SDKMAN_CANDIDATES_DIR/java/8.0.232.hs-adpt"
set -x JDK11 "$SDKMAN_CANDIDATES_DIR/java/11.0.5.hs-adpt"
set -x JDK12 "$SDKMAN_CANDIDATES_DIR/java/12.0.2.hs-adpt"
set -x JAVA_HOME $JDK11

set -x GOPATH ~/.gopath

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $HOME/.cargo/bin $HOME/.local/bin $PATH

set -x SVN_EDITOR vim

# gpg signing
set -x GPG_TTY (tty)

# init prompt
starship init fish | source
