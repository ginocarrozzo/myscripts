export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=256m"
export JAVA_HOME="/usr/lib/jvm/default-java"
export ODL_USERNAME=gcarrozzo

alias repo="~/git-repo/repo"
alias ll="ls -l --color"
alias la="ls -la --color"
alias ls="ls --color"
#alias emacs="emacs --no-desktop"
alias rm="rm -i"
alias gimp="gimp-2.6"
alias grep="grep --color"
#alias algn08="ssh -Y nextworks@algn08"
#alias algn02="ssh -Y carrozzo@algn02"
#alias algn12="ssh -Y carrozzo@algn12"
#alias algn16="ssh -Y carrozzo@algn16"
#alias algn17="ssh -Y carrozzo@algn17"
#alias algn19="ssh -Y carrozzo@algn19"
#alias alvpme="ssh -Y carrozzo@alvpme"
alias jeeg="ssh -Y gmpls@10.0.2.206"
alias tyrone="ssh -Y gino@tyrone"
alias netdev-1="ssh -Y gmpls@netdev-1"
alias netdev-2="ssh -Y gmpls@netdev-2"
alias netdev-3="ssh -Y gmpls@netdev-3"

function flc {
  ssh -i ~/.ssh/tss100.key root@151.98.27.$1
}

function flciv {
  ssh -i ~/.ssh/tss100.key root@151.98.200.$1
}


