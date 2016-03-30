# Load the shell dotfiles:
for file in ~/.dotfiles/.{exports,aliases,bash_prompt,init}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file
