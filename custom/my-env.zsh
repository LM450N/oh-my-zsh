LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

# User configuration
export PATH="./bin:/usr/local/bin:/usr/local/sbin:$HOME/.dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"
# Ruby
export PATH="/usr/local/opt/ruby/bin:$PATH"
# Go language
export PATH="/usr/local/opt/go/libexec/bin:$PATH"

# Add Quick Command-line File completion to PATH
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"
qfc_quick_command 'cd' '\C-b' 'cd $0'
qfc_quick_command 'vim' '\C-p' 'vim $0'

# Travis CI
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"

# You may need to manually set your language environment
#export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Load SCM Breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# Override broken scm_breeze alias
alias gunwip='command git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'

# Add Hub aliases
alias gi='hub issue'
alias grel='hub release'
alias gcis='hub ci-status'

# Google App Engine
#export GAE="$HOME/.google/google_appengine"
#export PATH="$PATH:$GAE"

# Yarn Package Manager, Node Package Manager
export PATH="$HOME/.yarn/bin/:$HOME/.npm:$PATH"
# PyEnv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
eval "$(pyenv virtualenv-init -)";
# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# Google's Flutter
export PATH="$HOME/.google/flutter/bin:$PATH"
# Ruby Version Manager, RubyEnv, Node Package Manager
export PATH="$HOME/.rvm/bin:$HOME/.rbenv/shims:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/.google/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/.google/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/.google/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/.google/google-cloud-sdk/completion.zsh.inc"; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f $HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . $HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f $HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . $HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh

