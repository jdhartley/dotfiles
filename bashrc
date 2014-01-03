alias lock="/System/Library/CoreServices/'Menu Extras'/User.menu/Contents/Resources/CGSession -suspend"
alias sb='cd ~/Work/StageBloc/vagrant/vhosts/stagebloc.com/httpdocs/'
alias gut='git'
alias gs='git status -sb'
alias gd='git diff'
alias gl='git pull origin'
alias whispers='say -v whisper'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias rsyncssh='rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress'

alias firedave='curl -d key=[REDACTED] http://howmanytimeshasdavebeenfired.com/upit.php'

function woman() {
  man -t $1 | open -fa Preview
}
