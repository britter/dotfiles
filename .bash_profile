# Load the shell dotfiles:
for file in ~/.dotfiles/.{exports,aliases,docking,bash_prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
