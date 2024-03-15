# Source the ~/.bashrc file if it exists
if [ -f ~/.bashrc ]
then
    . ~/.bashrc
fi

# ssh-agent auto startup
eval `ssh-agent` > /dev/null 2>&1
