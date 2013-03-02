# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval         "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# I like confirming destructive operations.
alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"

# security aliases
alias findWorldWritableFiles='find . -xdev -type d \( -perm -0002 -a ! -perm -1000 \) -print'
alias findNoOwnerFiles='find . -xdev \( -nouser -o -nogroup \) -print'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# SVN
alias rmsvndirs='rm -irf `find . -type d -name .svn`'

# virtualenv aliases
alias cdv='cd $VIRTUAL_ENV'

# Django aliases
alias dshell='python manage.py shell'
alias runserver='./manage.py runserver'
alias syncdb='./manage.py syncdb'

# Source local aliases
if [ -f ~/.bash_aliases_local ]; then
	. ~/.bash_aliases_local
fi
