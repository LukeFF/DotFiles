#!/bin/sh

echo "\033[0;31m-- Installing Homebrew\033[0m"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "\033[0;31m-- Installing Caskroom\033[0m"
brew tap caskroom/cask

echo "\033[0;31m-- Installing Security Apps\033[0m"
brew cask install lockdown little-snitch avira-antivirus
open "/Applications/Lockdown.app"

echo "\033[0;31m-- Installing Monokai Terminal Theme\033[0m"
brew cask install wget
wget https://raw.githubusercontent.com/stephenway/monokai.terminal/master/Monokai.terminal
open Monokai.terminal
rm Monokai.terminal

echo "\033[0;31m-- Installing Atom & Hack Font\033[0m"
brew cask install atom caskroom/fonts/font-hack
apm install atom-beautify pigments linter file-icons monokai native-ui

echo "\033[0;31m-- Installing Node & globally used packages\033[0m"
brew install node
npm install -g bower grunt-cli gulp yo ionic

echo "\033[0;31m-- Installing Google Chrome\033[0m"
wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
open googlechrome.dmg
cp -r "/Volumes/Google Chrome/Google Chrome.app" /Applications
open "/Applications/Google Chrome.app"
diskutil eject "/Volumes/Google Chrome"
rm googlechrome.dmg

echo "\033[0;31m-- Installing Messaging Apps\033[0m"
brew cask install franz skype teamspeak-client

echo "\033[0;31m-- Installing Microsoft Office\033[0m"
brew cask install microsoft-office
sudo rm -rf "/Applications/Microsoft OneNote.app"
sudo rm -rf "/Applications/Microsoft Outlook.app"

echo "\033[0;31m-- Installing Developement Apps\033[0m"
brew cask install phpstorm webstorm pycharm rubymine sourcetree

echo "\033[0;31m-- Installing VM Apps\033[0m"
brew cask install parallels-desktop vagrant docker
vagrant plugin install vagrant-parallels

echo "\033[0;31m-- Installing Multimedia Apps\033[0m"
brew cask install vlc qsync-client

echo "\033[0;31m-- Installing 3D-Printer Apps Apps\033[0m"
brew cask install arduino cura
