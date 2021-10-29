function gh_publish
  if test ! -d .git
    git this
  end
  gh repo create
  git push -u origin master
end
