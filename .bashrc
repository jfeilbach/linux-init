# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000

# set PS1
PS1='${debian_chroot:+($debian_chroot)}\[\033[37m\]\u\[\033[00m\]@\[\033[33m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
