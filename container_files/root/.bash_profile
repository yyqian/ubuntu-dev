grepcurr () {
  grep -nr $1 .
}
findcurr () {
  find . -name $1
}
alias gitsync='git add -A; git commit -m "auto-sync"; git push'
alias c='cat'
alias e='exit'
alias v='vim'
alias l='ls -Alh --time-style=long-iso --group-directories-first'
#source ~/virtualenv/Stark/bin/activate
