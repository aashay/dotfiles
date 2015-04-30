#Git stuff
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

alias gsubup='git submodule update --init --recursive'


#Misc
alias share='python -m SimpleHTTPServer'
alias raspi='ssh pi@10.0.1.28'
alias temp='curl -s  http://4ca.st/ajax.php?action=current\&zip=94105 | json current.temperature'
alias forecast='curl -s http://4ca.st/ajax.php?action=forecast\&zip=94105 | json forecast | json -a dayname daytime.hightemp'
