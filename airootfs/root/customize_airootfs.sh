#!/bin/bash

# enabling sudo for wheel group
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# installing vim plugins for user
sudo -u user vim +PlugInstall +qall
# installing coc extensions
sudo -u user vim +"execute 'CocInstall -sync ' . join(g:coc_global_extensions, ' ')" +qall
sudo -u user vim +CocUpdateSync +qall

# add user to wireshark group
usermod -aG user wireshark
