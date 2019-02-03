function git_clone_asf
  set project $argv[1]
  git clone -o github git@github.com:apache/$project.git
  cd $project
  hub fork --remote-name=origin git@github.com:britter/$project.git
  git remote add upstream http://gitbox.apache.org/repos/asf/$project.git
end
