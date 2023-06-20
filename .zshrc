#zmodload zsh/zprof
#export PATH=$HOME/bin:/usr/local/bin:$PATH
path+=/usr/bin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# How many commands zsh will load to memory.
export HISTSIZE=1000

# How many commands history will save on file.
export SAVEHIST=10000

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS
#GITSTATUS_LOG_LEVEL=DEBUG
#zprof
