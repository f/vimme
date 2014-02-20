tmux="/usr/local/bin/reattach-to-user-namespace -l /usr/local/bin/tmux"
$tmux has-session 2> /dev/null
if [ $? == 0 ]
then
  $tmux attach
else
  $tmux new-session
fi
