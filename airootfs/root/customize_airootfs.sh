#!/bin/bash

# utilise the dotfiles
rm /usr/local/share/dotfiles/.gitignore /usr/local/share/dotfiles/.git
rsync -a /usr/local/share/dotfiles/ /etc/skel
rsync -a --chown=user:user /usr/local/share/dotfiles/ /home/user

# enabling sudo for wheel group
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# installing vim plugins for user
sudo -u user vim +PlugInstall +qall
# installing coc extensions
sudo -u user vim +"execute 'CocInstall -sync ' . join(g:coc_global_extensions, ' ')" +qall
sudo -u user vim +CocUpdateSync +qall

# add user to wireshark group
usermod -aG wireshark user
