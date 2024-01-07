PROJECT_NAME="Config"
PROJECT_DIR="/media/data/user/projects/config"

tmux has-session -t $PROJECT_NAME 2>/dev/null
if [ "$?" -eq 1 ] ; then
    echo "No Session found.  Creating and configuring."
    cd $PROJECT_DIR
    tmux new-session -d -s $PROJECT_NAME
#    tmux source-file ~/bin/tmux-${PROJECT_NAME}.conf
    tmux send-keys -t Config 'vim' C-m
    tmux split-window
    tmux select-pane -t 0
else
    echo "Session found. Connecting."
fi
tmux attach-session -t $PROJECT_NAME
