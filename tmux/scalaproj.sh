PROJECT_NAME="Scala"
PROJECT_DIR="/media/data/user/projects/$1"

tmux has-session -t $PROJECT_NAME 2>/dev/null
if [ "$?" -eq 1 ] ; then
    echo "No Session found.  Creating and configuring."
    cd $PROJECT_DIR
    tmux new-session -d -s $PROJECT_NAME
#    tmux source-file ~/bin/tmux-${PROJECT_NAME}.conf
    tmux rename-window $PROJECT_NAME
    tmux send-keys -t $PROJECT_NAME 'vim' C-m
    tmux split-window -vp 40
    tmux send-keys -t $PROJECT_NAME 'act shell' C-m
    tmux setw -g mode-mouse on
    tmux select-pane -t 0
else
    echo "Session found. Connecting."
fi
tmux attach-session -t $PROJECT_NAME
