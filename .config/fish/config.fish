alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias cat=bat
alias ls=exa
alias ll="exa -la"

set -x LANG en_US.utf-8

set -x MAVEN_OPTS "-Duser.name=benedikt"

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $HOME/.local/bin "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH

set -x EDITOR vim

# gpg signing
set -x GPG_TTY (tty)

# init brew on macOs
switch (uname)
  case Darwin
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

# asdf scripts need to be sourced after you have set your $PATH and after you have sourced your framework (oh-my-zsh etc).
switch (uname)
  case Linux
    source /opt/asdf-vm/asdf.fish
  case Darwin
    source /opt/homebrew/opt/asdf/libexec/asdf.fish
end
# on macOS additional configuration is required in .asdfrc, see https://github.com/halcyon/asdf-java#macos
. ~/.asdf/plugins/java/set-java-home.fish

# secrets not to be checked in
if test -e /Users/bene/.dotfiles/.config/fish/secrets.fish
  source /Users/bene/.dotfiles/.config/fish/secrets.fish
end

set -x JDK8 (asdf where java liberica-8u362+9)
set -x JDK11 (asdf where java liberica-11.0.18+10)
set -x JDK17 (asdf where java liberica-17.0.6+10)
set -x JDK18 (asdf where java liberica-18.0.2.1+1)

# init prompt
starship init fish | source
