# Welcome message
echo "Hi from https://github.com/abernier/dotfiles/.bashrc"

# enable colors
export CLICOLOR=1

#
# history
#
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"  # Save and reload the history after each command finished
# Snippets
history -s 'kill $(lsof -ti:3000) # kill process on port 3000'
history -s 'git reset --hard HEAD~1'
history -s 'git rev-parse HEAD # print last commit id'
history -s 'docker ps -q | xargs docker stats # CPU usage for running containers (like top)'

# some aliases
alias ll="ls -al"
alias ironyou="npx -y ironyou ~/ironhack/wdpt202102par.json"
