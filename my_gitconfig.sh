#!/bin/bash

cd ~
sudo apt install git
git --version
rm ~/.gitconfig

User=("name=nawrazaltai email=nawraz.altai@chasacademy.se")

echo [user] >> ~/.gitconfig
for i in $User; do
echo $i >> ~/.gitconfig
done

Core=("editor=nano")

echo [core] >> ~/.gitconfig
for i in $Core; do
echo $i >> ~/.gitconfig
done
