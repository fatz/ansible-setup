
# check if zshrc.d exists
if [ -d ~/.zshrc.d ]; then
    # source all *.zsh files in ~/.zshrc.d
    for file in ~/.zshrc.d/*.zsh; do
    source $file
    done
else
    echo "No ~/.zshrc.d directory found."
fi
