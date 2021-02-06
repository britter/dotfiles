[ -n "$PS1" ] && source ~/.bashrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/bene/.sdkman"
[[ -s "/Users/bene/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/bene/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.cargo/bin:$PATH"
