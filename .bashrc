# Load the shell dotfiles:
for file in ~/.dotfiles/.{exports,aliases,functions,bash_prompt,init}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# added by travis gem
[ -f /Users/bene/.travis/travis.sh ] && source /Users/bene/.travis/travis.sh
