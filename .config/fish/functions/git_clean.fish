function git_clean
  set base_branch $argv[1]
  git branch --merged $base_branch | grep -v $base_branch | xargs -n 1 git branch -D;
  git fetch -p
end
