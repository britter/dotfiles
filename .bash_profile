## SDKs ##
export JAVA_6_HOME=`/usr/libexec/java_home -v 1.6`
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=$JAVA_8_HOME
export GROOVY_HOME=/usr/local/opt/groovy/libexec

## PATH ##
export PATH=/usr/local/bin:/usr/local/sbin:$JAVA_HOME/bin:$PATH

export SVN_EDITOR=vim

## Bash look and feel
export CLICOLOR=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

## Open man page as PDF
pman () { man -t "${1}" | open -f -a "Preview"; }

## Bash completion
complete -o default -o nospace -W "$(/usr/bin/env ruby -ne 'puts $_.split(/[,\s]+/)[1..-1].reject{|host| host.match(/\*|\?/)} if $_.match(/^\s*Host\s+/);' < $HOME/.ssh/config)" scp sftp ssh

## Show the location of a linked program
ref() { readlink $(which "${1}"); }

## Output MANIFEST for the given jar
manifest() { unzip -q -c "${1}" META-INF/MANIFEST.MF; }

## Get svn keywords
gkw() { svn pg svn:keywords ${1}; }

## Set svn keywords
skw() { svn ps svn:keywords "Date Author Id Revision HeadURL" ${1}; }

## Docker
# VirtualBox DHCP may change the IP. Use redock to
# update the DOCKER_HOST var
redock() {
  export DOCKER_IP=$(boot2docker ip 2>/dev/null)
  export DOCKER_HOST="tcp://$DOCKER_IP:2375"
}

dock() {
  redock

  if [ "$1" == "elasticsearch" ]; then
    docker stop elasticsearch &> /dev/null
    docker rm elasticsearch &> /dev/null
    docker run --detach \
               --publish 9200:9200 \
               --publish 9300:9300 \
               --name elasticsearch \
               dockerfile/elasticsearch
    echo "Elasticsearch started. Listening to $DOCKER_IP:9200"
  else
    echo "Unknown service. Sample usage: 'dock elasticsearch'"
  fi
}
