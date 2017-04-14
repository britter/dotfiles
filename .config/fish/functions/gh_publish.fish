function gh_publish
  if test ! -d .git
    git this
  end
  hub create (basename $PWD)
  git push -u origin master
end
