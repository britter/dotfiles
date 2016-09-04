function use_java --description "Switch between Java versions"
  set arg_count (count $argv)
  if [ $arg_count = 0 ]
    echo "JAVA_HOME: $JAVA_HOME"
  else
    set old_java_home $JAVA_HOME
    set new_version $argv[1]
    if [ $new_version -lt 9 ]
      set new_java_home (/usr/libexec/java_home -v 1.$new_version)
    else
      set new_java_home (/usr/libexec/java_home -v $new_version)
    end
    if [ $status = 0 ]
      echo "Setting JAVA_HOME to: $new_java_home"
      set JAVA_HOME $new_java_home
      for i in (seq (count $PATH))
        if [ $PATH[$i] = $old_java_home/bin ]
          set PATH[$i] $new_java_home/bin
        end
      end
    else
      echo "Java 1.$new_version is not available! JAVA_HOME: $JAVA_HOME"
    end
  end
end

complete -c use_java -a "6 7 8 9"
