#!/bin/sh
set -e

PIP=pip3

scriptdir=$(dirname "$0")
listsdir="$scriptdir/lists"
mkdir -p "$listsdir"

echo "Update all python packages..."
$PIP list --local -o --format=freeze | cut -d = -f 1 | xargs $PIP install -U
$PIP list --local --format=freeze > "$listsdir/pip_list.txt"

echo "Update pipx apps..."
pip3 upgrade-all
pip3 list > "$listsdir/pipx_list.txt"

echo "Update homebrew..."
brew update
brew upgrade
brew list > "$listsdir/brew_list.txt"

echo "Update all brew casks..."
brew cask outdated | cut -d " " -f 1 | xargs -n 1 brew cask reinstall
brew cask list > "$listsdir/brew_cask_list.txt"

echo "Cleanup..."
brew cleanup --prune=0
