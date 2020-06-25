export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
# Ensure user-installed binaries take precedence
export PATH=/usr/local/bin:/usr/local/opt/python/libexec/bin:/usr/local/google_appengine:$PATH
# configure Django settings
export DJANGO_SETTINGS_MODULE=settings
# get figurine from applications
export PATH=$PATH:/Applications

alias k='kubectl'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tarakreft/google-cloud-sdk/path.bash.inc' ]; then source '/Users/tarakreft/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tarakreft/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/tarakreft/google-cloud-sdk/completion.bash.inc'; fi

parse_git_branch() {  
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Terminal colors
boldYellow="\033[93;1m"
pink="\e[95m"
resetText="\033[m"

export PS1="\[${boldYellow}\]\W\[${pink}\]\$(parse_git_branch)\[${resetText}\] 🐻 "

uhoh() {
  figurine zoops
}

# invoke figurine
uhoh