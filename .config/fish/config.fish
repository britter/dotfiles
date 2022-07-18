alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cat=bat

set -x LANG en_US.utf-8

set -x MAVEN_OPTS "-Duser.name=benedikt"

set -x GOPATH ~/.gopath

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $HOME/.cargo/bin $HOME/.local/bin $PATH

set -x SVN_EDITOR vim

# gpg signing
set -x GPG_TTY (tty)

# asdf scripts need to be sourced after you have set your $PATH and after you have sourced your framework (oh-my-zsh etc).
switch (uname)
  case Linux
    source /opt/asdf-vm/asdf.fish
  case Darwin
    source /usr/local/opt/asdf/libexec/asdf.fish
end
# on macOS additional configuration is required in .asdfrc, see https://github.com/halcyon/asdf-java#macos
. ~/.asdf/plugins/java/set-java-home.fish

set -x JDK8 (asdf where java liberica-8u333+2)
set -x JDK11 (asdf where java liberica-11.0.15.1+2)
set -x JDK16 (asdf where java liberica-16.0.2+7)
set -x JDK17 (asdf where java liberica-17.0.3.1+2)

# init prompt
starship init fish | source
