# Load the shell dotfiles:
for file in ~/.dotfiles/.{init,exports,aliases,functions,bash_prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

## Initialize bash completion ##
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh

eval "$(starship init bash)"
