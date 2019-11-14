# Load the shell dotfiles:
for file in ~/.dotfiles/.{init,exports,aliases,functions,bash_prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

eval "$(starship init zsh)"
