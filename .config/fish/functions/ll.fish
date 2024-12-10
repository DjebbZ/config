function ll --wraps=ls --wraps=exa --wraps=eza --description 'List files/directories using eza'
    eza --long --header --icons --git --total-size $argv
end
