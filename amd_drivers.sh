#!/bin/bash
printf 'Install AMD GPU drivers? (y/n) '
old_stty_cfg=$(stty -g)
stty raw -echo
answer=$( while ! head -c 1 | grep -i '[ny]' ;do true ;done )
stty $old_stty_cfg
if [ "$answer" != "${answer#[Yy]}" ];then
	sudo nala remove nvidia*
else
    break
fi