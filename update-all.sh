#!/bin/sh

echo "-- Updating homebrew packages"
brew update && brew upgrade --all
echo "-- Updating global node.js packages"
npm update -g
echo "-- Updating ruby"
gem update --system && gem update
