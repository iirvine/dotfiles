# GENERAL SETUP
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

if [ -f ~/.bash_prompt ]; then
. ~/.bash_prompt
fi

if [ -f ~/.functions ]; then
	. ~/.functions
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f ~/z.sh ]; then
    . ~/z.sh
fi

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# RBENV
eval "$(rbenv init -)"

# EXPORTS
export EDITOR="sublime -w"

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/share/npm/bin:$PATH