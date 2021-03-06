export MANPATH="/usr/local/man:$MANPATH"
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# ruby
export PATH=$PATH:~/.gem/ruby/1.8/bin

# mysql (mac)
export PATH=$PATH:/usr/local/mysql/bin

# jruby
export PATH=$PATH:~/bin/jruby-1.3.1/bin

# groovy
export PATH=$PATH:~/bin/groovy-1.6.7/bin

# ant
export ANT_HOME=~/bin/apache-ant-1.7.1
export PATH="$ANT_HOME/bin:$PATH"

# cascading
export CASCADING_HOME=~/bin/cascading

# ec2
export EC2_HOME=~/bin/ec2-api-tools-1.3-34128
export PATH=$PATH:$EC2_HOME/bin

# java
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home/
export PATH=$JAVA_HOME/bin/:$PATH

# maven
export M2_HOME=~/bin/apache-maven-2.1.0
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH

# hadoop
export HADOOP_HOME=~/bin/hadoop-0.20.1
export HADOOP=$HADOOP_HOME/bin/hadoop
export PATH=$PATH:$HADOOP_HOME/bin

# tomcat
export CATALINA_OPTS="-server -Xmx1024m"

unjar() {
   BASE=`basename $@`
   DIR=`dirname $@`
   cp $@ $DIR/_$BASE.zip
   mkdir $DIR/_$BASE
   unzip $DIR/_$BASE.zip -d $DIR/_$BASE
   rm $DIR/_$BASE.zip
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\w\$(parse_git_branch) $ "

# make bash autocomplete with up arrow
# add to your ~/.profile
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

alias clrepl='rlwrap java -server -Xmx1624m -cp ~/bin/clojure_1.0.0/clojure.jar:/Users/ddonnell/projects/clojure-contrib/clojure-contrib.jar clojure.lang.Repl'
alias hg='history | grep '
alias pg='ps ax | grep'
