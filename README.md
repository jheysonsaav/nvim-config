# Neovim and Vim configs

## Installation

1. first we must install a plugin manager, in my case I use Plug

#### Vim

###### Unix

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

You can automate the process by putting the command in your Vim configuration
file as suggested [here][auto].

[auto]: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation

###### Windows (PowerShell)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

#### Neovim

###### Unix, Linux

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

###### Linux (Flatpak)

```sh
curl -fLo ~/.var/app/io.neovim.nvim/data/nvim/site/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

###### Windows (PowerShell)

```powershell
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

2. Download neovim and vim dependencies

```sh
# Arch Linux
sudo pacman -S python-neovim xclip wl-clipboard nodejs python
npm install -g neovim

# Ubuntu
sudo apt install nodejs python xclip wl-clipboard
pip install neovim
npm install -g neovim
```

3. Clone git repository

```sh
# Github cli
gh repo clone jheysonsaav/nvim-config ~/.config/nvim

# Git
git clone https://github.com/jheysonsaav/nvim-config ~/.config/nvim
```

4. Copy vim config file

```sh
cp -r ~/.config/nvim/init.vim ~/.vimrc
```
