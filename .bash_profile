# Make directory listing color sane.
LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS
# set better PS1 in .bashrc
# PS1='${debian_chroot:+($debian_chroot)}\[\033[37m\]\u\[\033[00m\]@\[\033[33m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
if [ ! $(uname -s) = "Darwin" ]; then
    alias pbcopy='xclip -selection clipboard'
    alias pbpaste='xclip -selection clipboard -o'
fi

# Set git to use the credential memory cache
git config --global credential.helper cache

# Set the cache to timeout after 12 hours (setting is in seconds)
git config --global credential.helper 'cache --timeout=43200'

export FED_USERNAME='secret'

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

eval `keychain --agents ssh --eval id_rsa`
eval `keychain --agents ssh --eval id_ed25519`
eval `keychain --agents ssh --eval id_ed25519.other`
