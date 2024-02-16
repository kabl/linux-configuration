#!/bin/bash

echo "Copy .vimrc"
cp -b ./vim/.vimrc ~/.vimrc

echo "Copy .tmux.conf"
cp -b ./tmux/.tmux.conf ~/.tmux.conf

echo "Copy i3 config"
mkdir -p ~/.config/i3/
cp -b ./i3/config ~/.config/i3/config