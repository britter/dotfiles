function gitignore
  set -l build_files "pom.xml" "build.gradle" "build.sbt" "package.json"
  for build_file in $build_files
    if test -e $build_file
      set build_tool (__detect_build_tool $build_file)
      echo "Adding $build_tool files to .gitignore."
      gibo $build_tool >> .gitignore
    end
  end
end

function __detect_build_tool
  switch $argv[1]
  case "pom.xml"
    echo "maven"
  case "build.gradle"
    echo "gradle"
  case "build.sbt"
    echo "sbt"
  case "package.json"
    echo "node"
  end
end
