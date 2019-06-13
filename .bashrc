# Load the shell dotfiles:
for file in ~/.dotfiles/.{init,exports,aliases,functions,bash_prompt}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

[ -s "/Users/bene/.jabba/jabba.sh" ] && source "/Users/bene/.jabba/jabba.sh"
