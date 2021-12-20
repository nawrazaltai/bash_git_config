#!/bin/bash

cd ~
sudo apt install git
git --version
echo " "
echo " "

rm ~/.gitconfig

while true; do

User=("name=nawrazaltai" "email=nawraz.altai@chasacademy.se")
Core=("editor=nano")
echo "Your default Git-settings are set to:"
echo "=========================================="
echo "${User[0]}"
echo "${User[1]}"
echo "${Core[0]}"
echo "=========================================="
echo " "
read -p "If you want to keep these settings press 1, if you want to change the settings press 2: " Choice
echo " "

if [ $Choice == 1 ]; then
    echo "[user]" >> ~/.gitconfig
    for i in ${User[@]}; do
    echo $i >> ~/.gitconfig
    done
    echo " " >> ~/.gitconfig
    echo "[core]" >> ~/.gitconfig
    for i in ${Core[@]}; do
    echo $i >> ~/.gitconfig
    done
break
elif [ $Choice == 2 ]; then
    read -p "Please enter your Git-username: " gitname
    read -p "Please enter your email on Github: " gitemail
    read -p "Please enter your desired editor: " giteditor
    Newuser=("name=$gitname" "email=$gitemail")
    Newcore=("editor=$giteditor")

    echo "[user]" >> ~/.gitconfig
    for i in ${Newuser[@]}; do
    echo $i >> ~/.gitconfig
    done
    echo " " >> ~/.gitconfig
    echo "[core]" >> ~/.gitconfig
    for i in ${Newcore[@]}; do
    echo $i >> ~/.gitconfig
    echo " "
    echo "Your Git settings are now updated!"
    done
break
else
echo "Wrong input, please try again..."
echo " "
    continue
fi
done


