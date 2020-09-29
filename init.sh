sudo apt install -y konsole vim zsh universal-ctags vim-gtk3 curl ruby-full tmux apt-transport-https ca-certificates nodejs npm software-properties-common;
mkdir Data;
# Install Ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
# Installing fonts
mkdir Installer && cd Installer;
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git && \
cd nerd-fonts && ./install.py FiraCode && cd;
# Install tmuxinator
sudo gem install tmuxinator
# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install Powerlvl10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Install Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" && \
sudo apt update && \
sudo apt install docker-ce -y && \
sudo usermod -aG docker ${USER} && \
# Installing Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
sudo chmod +x /usr/local/bin/docker-compose;
