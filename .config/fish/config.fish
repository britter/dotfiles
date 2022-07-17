alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cat=bat

set -x LANG en_US.utf-8

## SDKs ##
set -x JDK8 "$SDKMAN_CANDIDATES_DIR/java/8.0.282.hs-adpt"
set -x JDK11 "$SDKMAN_CANDIDATES_DIR/java/11.0.10.hs-adpt"
set -x JDK12 "$SDKMAN_CANDIDATES_DIR/java/12.0.2.hs-adpt"
set -x JDK13 "$SDKMAN_CANDIDATES_DIR/java/13.0.2.hs-adpt"
set -x JDK14 "$SDKMAN_CANDIDATES_DIR/java/14.0.2.hs-adpt"
set -x JDK15 "$SDKMAN_CANDIDATES_DIR/java/15.0.2.hs-adpt"
set -x JDK16 "$SDKMAN_CANDIDATES_DIR/java/16.0.0.hs-adpt"
set -x JAVA_HOME $JDK11

set -x MAVEN_OPTS "-Duser.name=benedikt"

set -x GOPATH ~/.gopath

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $HOME/.cargo/bin $HOME/.local/bin $PATH

set -x SVN_EDITOR vim

# gpg signing
set -x GPG_TTY (tty)

# asdf scripts need to be sourced after you have set your $PATH and after you have sourced your framework (oh-my-zsh etc).
source /opt/asdf-vm/asdf.fish

# init prompt
starship init fish | source
