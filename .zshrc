# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="/Users/steven/anaconda3/bin:$PATH"  

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/rabbitmq/sbin:$PATH"
# export PIPENV_PYTHON=/usr/local/bin/python3.7
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR=vim

#export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=~/zsh-theme/zsh-syntax-highlighting/highlighters
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="pygmalion"
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# deleted on 2019-3-8: mvn, gradle, colored-man-pages, github, jira
# vagrant, pip, python, zsh-syntax-highlighting, zsh-autosuggestions
# colorize
plugins=(
  git
  ruby
  autojump
  virtualenv
  brew
  osx
  vscode
)

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
alias vimconfig="vi ~/.vimrc"
alias tmuxconfig="vi ~/.tmux.conf"
# alias envconfig="vi ~/Projects/config/env.sh"
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# Load Zsh tools for syntax highlighting and autosuggestions
HOMEBREW_FOLDER="/usr/local/share"
source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" 
source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"

# Load ruby tools for colorls
#source /Library/Ruby/Gems/2.3.0/gems/colorls-1.1.1/lib/tab_complete.sh


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

##export HOMEBREW_GITHUB_API_TOKEN= d2565a872621a145de8082b6c47661ec96989b77
export HOMEBREW_GITHUB_API_TOKEN=3a6afd45a3d814586f210ab6cd22e4263f2a4fe2

# Customise the Powerlevel9k prompts
# if i want to use Python or JavaScript, I need to add custom_javascript or custom_python
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
#  dir
#  vcs
#  newline
#  status
#)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true 

# Create a custom Python prompt section
#POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
#POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
#POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="purple"

# Create a custom JavaScript prompt section
#POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
#POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
#POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"

# Load Nerd Fonts with Powerlevel9k theme for Zsh
#POWERLEVEL9K_MODE='nerdfont-complete'
#source ~/zsh-theme/powerlevel9k/powerlevel9k.zsh-theme
source ~/.bin/tmuxinator.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/steven/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/steven/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/steven/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/steven/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
