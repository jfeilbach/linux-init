alias tl="/usr/bin/transmission-remote -l | egrep -v 'Idle|Stopped'"
alias rr='if [ -f /var/run/reboot-required ]; then echo "reboot required"; else echo "No reboot needed"; fi'
alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'
alias t-reload='sudo service transmission-daemon reload'
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'
