function config --wraps=git --description 'tracks config and dotfiles with git'
    /usr/bin/git --git-dir=$HOME/.config.git --work-tree=$HOME $argv
end
