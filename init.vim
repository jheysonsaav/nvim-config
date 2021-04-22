for f in split(glob('~/.config/nvim/lib/**/*.vim'), '\n')
    exe 'source' f
endfor
