#============================================================
#  ALIASES AND FUNCTIONS
#
#  If you want to make this file smaller, these functions can
#+ be converted into scripts and removed from here.
#
#============================================================

#------------------
# docker
#------------------
alias doci="docker images"
alias docc="docker container ls"

#-----------------
# shortcut to places
#-----------------
alias dotfiles="cd ~/src/dotfiles"

#-----------------
# vagrant
#-----------------
alias vags="vagrant status"
alias vagreload="vagrant reload"
alias vagup="vagrant up"
alias vagsus="vagrant suspend"
alias vagssh="vagrant ssh -p"

#-----------------
# bash
#-----------------
alias rr="rm -r"
alias bashprofile="vim ~/.bash_profile"
alias bashrc="vim ~/.bashrc"
alias bashprompt="vim ~/.bash_prompt.bash"
alias aliases="vim ~/.aliases.bash"
alias sourcebash="source ~/.bashrc"

#-----------------
# git
#----------------
alias gitnopassword="ssh-add -A"
alias gitamend="git commit --amend --no-edit && git push -f"
alias gitfu="git fetch upstream"
alias gitd="git diff"
alias gitp="git pull --rebase upstream master"
alias gitremote="git remote -v"
alias gitbr="git branch"
alias gitbrD="git branch -D"
alias gitbrDr="git push origin --delete"
alias gitc="git checkout"
alias gits="git branch &&
            ECHO '----------------------------' &&
            git status"
# git remove local and remote branch in the same command
gitbrANDrr() {
    gitbrD $1 && gitbrDr $1
}
alias gitbrDall=gitbrANDrr

alias h="history"
alias j="jobs -l"
alias which="type -a"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias port3k="lsof -i tcp:3000"

# Pretty-print of some PATH variables:
alias path="echo -e ${PATH//:/\\n}"
alias libpath="echo -e ${LD_LIBRARY_PATH//:/\\n}"
