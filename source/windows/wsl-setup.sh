
############################
# Install base tools and utilities
sudo apt update
sudo apt install zsh tmux autojump -y
sh -c "$(curl -fsSL
https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -fsSL https://get.docker.com | sudo bash
############################

############################
# Configurations
cp ~/.zshrc ~/.zshrc.bak

cat << 'EOF' > ~/.zshrc
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="ys"

. /usr/share/autojump/autojump.sh

if [ -z "$SSH_AUTH_SOCK" ] ; then
        eval `ssh-agent` > /dev/null
fi

export EDITOR=vim
export PATH=$PATH:$HOME/bin
plugins=(git autojump)
source $ZSH/oh-my-zsh.sh
EOF

############################


############################
# SSH keys
SSH_KEY="$HOME/.ssh/id_gitlab"
if [ ! -f "$SSH_KEY" ]; then
    ssh-keygen  -f "$SSH_KEY" -N
fi
############################

############################
# Install development tools and utilities
sudo apt install -y openjdk-17-jdk openjdk-17-source openjdk-11-jdk
openjdk-11-source openjdk-8-jdk openjdk-8-source openjdk-21-jdk
openjdk-21-source
