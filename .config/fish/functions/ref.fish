function ref --description 'Print the location of a given command'
  readlink (which $argv)
end
