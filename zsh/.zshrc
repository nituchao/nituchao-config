# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# define JAVA_HOME
# export JAVA_HOME="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"
export PATH=${PATH}:${JAVA_HOME}/bin

# define MAVEN_HOME
export MAVEN_HOME="/Users/liang/Documents/bin/apache-maven-3.3.9"
export PATH=${PATH}:${MAVEN_HOME}/bin

# define Resin
export RESIN_HOME="/Users/liang/Documents/bin/resin-pro-4.0.44"
export PATH=${PATH}:${RESIN_HOME}/bin

# define LANG
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# define Sencha Cmd
export PATH=/Users/liang/Documents/bin/Sencha/Cmd/5.1.3.61:$PATH
export SENCHA_CMD_3_0_0="/Users/liang/Documents/bin/Sencha/Cmd/5.1.3.61"

# define play
export PATH=/Users/liang/Documents/bin/activator-dist-1.3.5:$PATH

# define sbt
export PATH=/Users/liang/Documents/bin/sbt/bin:$PATH

# define scala
export SCALA_HOME=/Users/liang/Documents/bin/scala-2.11.6
export PATH=${PATH}:${SCALA_HOME}/bin

# define Zookeep
export ZOOKEEPER_HOME=/Users/liang/Documents/bin/zookeeper-3.4.6
export PATH=${PATH}:${ZOOKEEPER}/bin

# define go
export BEEPATH=/Users/liang/Documents/bin/beego/bin
export GOROOT=/usr/local/go
export GOPATH=/Users/liang/Documents/workspace/golang
export GOBINPATH=${GOPATH}/bin
export PATH=${PATH}:${GOROOT}:${BEEPATH}:${GOBINPATH}

# define spark
export SPARK_HOME=/Users/liang/Documents/bin/spark-1.2.0-mdh1.2.4-bin-2.4.0-mdh2.0.7
export PATH=${PATH}:${SPARK_HOME}/bin

# define hadoop
export HADOOP_HOME=/Users/liang/Documents/bin/hadoop-2.4.0-mdh2.0.7
export PATH=${PATH}:${HADOOP_HOME}/bin

# define ant
export ANT_HOME=/Users/liang/Documents/bin/apache-ant-1.9.6
export PATH=${PATH}:${ANT_HOME}/bin

# define android
export ANDROID_SDK=/Users/liang/Documents/bin/android-sdk-macosx
export ANDROID_NDK=/Users/liang/Documents/bin/android-sdk-macosx
export ANDROID_HOME=${ANDROID_SDK}
export ANDROID_PLATFORM_TOOLS=${ANDROID_SDK}/platform-tools
export PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_PLATFORM_TOOLS}

# define alias
alias all="ls -lah"
alias liang="subl"
alias jser="jekyll server"
alias jpost="sh /Users/liang/nuts/nituchao/nituchao.com/bin/new_post.sh"
alias sshw="ssh zhangliang1@relay.xiaomi.com"
alias sshy="ssh root@123.57.92.222"
alias javac="javac -J-Dfile.encoding=UTF-8 -encoding UTF-8"
alias java="java -Dfile.encoding=UTF-8"
alias emacs="open -a /Applications/Emacs.app"
alias sshw="ssh work@10.98.80.56"
alias sshy="ssh root@123.57.92.222"
alias pushm="git push origin master:refs/for/master"
alias pullm="git pull --rebase origin master"
alias pushd="git push origin dev:refs/for/dev"
alias pulld="git pull --rebase origin dev"
alias cdntc="cd /Users/liang/Resilio\ Sync/Diskstation\'s\ Book/泥土巢集/nituchao_hugo/"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# let emacs can trace dir by multi-term
if [ -n "$INSIDE_EMACS" ]; then
  chpwd() { print -P "\033AnSiTc %d" }
  print -P "\033AnSiTu %n"
  print -P "\033AnSiTc %d"
fi

