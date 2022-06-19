# Dotfiles

- contains dotfiles for moving in between different OS
- uses stow to perform symlinks

# installation:

- note that for some deeper submodules you are going to have to run git checkout main
git clone https://github.com/Josiah-tan/.dotfiles.git ~/.dotfiles

cd .dotfiles

git submodule update --init --recursive
git submodule foreach 'git checkout main'
