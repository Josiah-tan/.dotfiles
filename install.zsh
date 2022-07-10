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

git -C ./plover/.config/plover/vim/plover_python_dictionary_lib submodule update --init

stow plover

##

if [[ "whoami" -eq "chicken" ]]
then
	source ~/plover/.tox/dev/bin/activate && pip install -r ./plover/.config/plover/requirements.txt && deactivate
fi


## tmux stuff

stow tmux

## quick projects stuff

if [[ "whoami" -eq "chicken" ]]
then
	stow quick_projects_linux20
elif [[ "whoami" -eq "josiah" ]]
then
	stow quick_projects_linux
fi
