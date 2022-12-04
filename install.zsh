## nvim stuff

git -C ./nvim/.config/nvim/ submodule update --init
git -C ./nvim/.config/nvim/ checkout main
git -C ./nvim/.vim/ submodule update --init
git -C ./nvim/.vim/ checkout main 

stow nvim

## plover stuff

git -C ./plover/.config/plover/ submodule update --init
git -C ./plover/.config/plover/ checkout main
git -C ./plover/.config/plover/ submodule update --init

git -C ./plover/.config/plover/vim/ submodule update --init
git -C ./plover/.config/plover/vim/ checkout main

# git -C ./plover/.config/plover/vim/plover_python_dictionary_lib submodule update --init

stow plover

## installing dependencies for Plover

if [[ "whoami" -eq "josiah" ]]
then
	source ~/plover/.tox/dev/bin/activate && pip install -r ./plover/.config/plover/requirements.txt && deactivate
fi


## tmux stuff

stow tmux

## quick projects stuff

if [[ "whoami" -eq "josiah" ]]
then
	stow quick_projects_linux
fi

## org stuff

git -C ./org/org/ submodule update --init
git -C ./org/org/ checkout master
stow org

## lsp
https://github.com/sumneko/lua-language-server/wiki/Build-and-Run	
# pylsp
pip install python-lsp-server
# pyright
pip install pyright
# clangd
https://clangd.llvm.org/installation.html