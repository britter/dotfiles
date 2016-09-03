function pman --description 'Opens the man page of the given command as PDF'
  man -t $argv | open -f -a "Preview"
end
