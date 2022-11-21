#!/bin/bash

#forcible removes the vimrc file
rm -f ~/.vimrc
#removes a specific line from the bashrc file
sed -i '/source ~\/\.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc
#recurcivly removes the TRASH file
rm -rf ~/.TRASH
