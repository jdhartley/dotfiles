# Set up Crostini
Add some tools and applications needed to work via ChromeOS.

### Set user password
It is good to have a password, and it will be needed for chsh later.
```bash
sudo passwd $USER
```

### Install tools
```bash
sudo apt-get update && \
  sudo apt-get -y install \
  software-properties-common \
  vim \
  wget \
  curl \
  gnupg \
  php-cli \
  xclip
```

### Install VS Code
```bash
curl -L "https://go.microsoft.com/fwlink/?LinkID=760868" > vscode.deb
sudo apt install -y ./vscode.deb
rm vscode.deb
code --install-extension Shan.code-settings-sync
```

### Install zsh shell and oh-my-zsh
```bash
sudo apt-get install -y zsh
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Add ssh-key (and open GitHub key settings)
```bash
ssh-keygen -t rsa -b 4096 -C "jdhrtl@gmail.com"
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
xdg-open 'https://github.com/settings/keys'
```

### Install nodejs, npm & yarn
```bash
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && \
  sudo apt-get install -y \
  nodejs \
  yarn
```


```bash
curl -L -o /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /tmp/discord.deb
sudo apt-get --fix-broken install -y
```
