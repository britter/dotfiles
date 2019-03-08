function mvn
  if set -q MAVEN_SETTINGS
    command mvn -s $MAVEN_SETTINGS $argv
  else
    command mvn $argv
  end
end
