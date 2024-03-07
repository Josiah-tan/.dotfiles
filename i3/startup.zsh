ibus exit
tmux new-session "nvim . -c \"lua require('user.plover').startPlover()\""
