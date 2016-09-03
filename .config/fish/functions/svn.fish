function svn
  if [ $argv = "reset" ]
    command svn revert --recursive . ; and svn status | grep \? | cut -c9- | xargs  rm -r;
  else
    command svn "$argv";
  end
end
