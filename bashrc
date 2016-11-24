alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'
alias lock="/System/Library/CoreServices/'Menu Extras'/User.menu/Contents/Resources/CGSession -suspend"
alias sb='cd ~/Work/StageBloc/core'
alias gut='git'
alias gs='git status -sb'
alias gd='git diff'
alias gl='git pull origin'
alias whispers='say -v whisper'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias rsyncssh='rsync -avz -e "ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null" --progress'
alias subliem='sublime'

alias such='git'
alias very='git'
alias wow='git status'

# https://github.com/nvbn/thefuck
alias fuck='$(thefuck $(fc -ln -1))'
alias FUCK='fuck'

function woman() {
  man -t $1 | open -fa Preview
}
