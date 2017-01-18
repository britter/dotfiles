## SDKs ##
set -x JAVA_7_HOME (/usr/libexec/java_home -v 1.7)
set -x JAVA_8_HOME (/usr/libexec/java_home -v 1.8)
set -x JAVA_9_HOME (/usr/libexec/java_home -v 9)
set -x JAVA_HOME $JAVA_8_HOME

set -x GOPATH ~/.gopath

set PATH /usr/local/bin /usr/local/sbin $JAVA_HOME/bin $PATH

## rbenv support
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set -x MAVEN_OPTS "-Xmx512m -XX:MaxPermSize=128m"

set -x SVN_EDITOR vim
