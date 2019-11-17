function update
  _header "fisher"
  fisher self-update
  fisher
  echo

  _header "Homebrew"
  brew update
  brew upgrade

  echo "vim bundles"
  for file in $HOME/.vim/bundle/*
    echo
    echo "Updating $file"
    git --git-dir=$file/.git fetch --all
    git --git-dir=$file/.git reset --hard origin/master
  end
end

function _header
  echo "-----------------------"
  echo "Updating $argv"
  echo "-----------------------"
end
