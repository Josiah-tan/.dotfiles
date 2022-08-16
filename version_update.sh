#!/usr/bin/env bash

if uname -r | grep -q "Microsoft"
then
	git -C /mnt/c/Users/josia/AppData/Local/plover/plover/ status
	git -C /mnt/c/Users/josia/AppData/Local/plover/plover/ add *.json
	git -C /mnt/c/Users/josia/AppData/Local/plover/plover/ commit -a -m "automated commit"
	git -C /mnt/c/Users/josia/AppData/Local/plover/plover/ pull
	git -C /mnt/c/Users/josia/AppData/Local/plover/plover/ push
else
	echo "yoooo"
fi


git -C ~/.vim/ status
git -C ~/.vim/ add .
git -C ~/.vim/ commit -a -m "automated commit"
git -C ~/.vim/ pull
git -C ~/.vim/ push

git -C ~/org/ status
git -C ~/org/ add .
git -C ~/org/ commit -a -m "automated commit"
git -C ~/org/ pull
git -C ~/org/ push
