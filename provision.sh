# Zsh
sudo apt install zsh
mkdir ~/apps
# Install OMZ
mv ~/.zshrc ~/.zshrc.bk
# NVIM install
wget https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.tar.gz -o ~/apps
cd ~/apps
# Extract NVIM binary to ~/apps/nvim-linux64/bin
tar xzf nvim-linux64.tar.gz
cd
sudo apt install neovim
mkdir .config
cd .config
mkdir nvim
cd
make
# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Install Rust-analyzer
mkdir -p ~/.local/bin
curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyer
# RG for FZF
cargo install ripgrep
sudo apt install build-essential
