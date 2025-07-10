function ll --wraps=ls --wraps=exa --wraps=eza --description 'List files/directories using eza'
    eza --long --all --header --icons --git $argv
end
