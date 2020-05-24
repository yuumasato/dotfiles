# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias vim='vimx'

export PS1="\[\e[1;36m\][\h \W\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')]\$\[\e[m\] "

# expand history
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
export HISTFILESIZE=10000

shopt -s histappend

export HISTCONTROL=ignorespace:erasedups

# scapval alias
alias scapval-ds='java -jar ~/scapval/SCAP_Content_Validation_Tool_1.2/lib/scapval-1.2.1.16.jar -scapversion 1.2 --file'
alias scapval-component='java -jar ~/scapval/SCAP_Content_Validation_Tool_1.2/lib/scapval-1.2.1.16.jar -component'

# scapval alias
alias scapval12-ds='java -jar ~/scapval/SCAP-Content-Validation-Tool-1.3.2/scapval-1.3.2.jar -scapversion 1.2 -file'
alias scapval12-component='java -jar ~/scapval/SCAP-Content-Validation-Tool-1.3.2/scapval-1.3.2.jar -component'

alias scapval13-ds='java -jar ~/scapval/SCAP-Content-Validation-Tool-1.3.2/scapval-1.3.2.jar -scapversion 1.3 -file'
alias scapval13-component='java -jar ~/scapval/SCAP-Content-Validation-Tool-1.3.2/scapval-1.3.2.jar -component'

function find_tests() {
    rule_id="$1"
    ssg_root="/home/wsato/git/content"
    test_dir=$(find $ssg_root/tests/data/ -type d -name *$rule_id*)

    if [ ! -z "$test_dir" ]; then
        printf "Test scenarios for rules their name contains \"$rule_id\" can be found at:\n$test_dir\n"
    else
        printf "No test scenarios for rules containing \"$rule_id\".\n"
    fi
}

# Source network aliases
if [ -f $HOME/.nm_redhat ]; then
	. $HOME/.nm_redhat
fi
