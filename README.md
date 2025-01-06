# DjebbZ dotfiles

Managed with just git, complete tutorial there : https://www.atlassian.com/git/tutorials/dotfiles

### Usage

Use the `config` command like `git` for anything inside the `$HOME` directory

``` shell
config status
config add .vimrc
config commit -m "Add vimrc"
config push
```

### Starting from scratch

``` shell
# Define Fish shell `config` function with the following content
# function config --wraps=git --description 'tracks config and dotfiles with git'
#     /usr/bin/git --git-dir=$HOME/.config.git --work-tree=$HOME $argv
# end
funced config

# Define a bare git repo where to store the config history
git init --bare $HOME/.config.git

# Hide files we are not explicitly tracking yet
config config --local status.showUntrackedFiles no
```

### Installing your dotfiles onto a new system (or migrate to this setup)
