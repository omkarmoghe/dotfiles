#!/bin/zsh

SHELL=/bin/zsh

all: zshrc gitconfig kittyconfig weztermconfig
	@echo
	@echo "Don't forget to \`omz reload\` and install the system packages in $(PWD)/system/packages.txt!"

zshrc: .zshrc
	@echo "Linking $(PWD)/.zshrc -> $(HOME)/.zshrc"
	@ln -sf $(PWD)/.zshrc $(HOME)

gitconfig: git/.gitconfig
	@echo "Linking $(PWD)/git/.gitconfig -> $(HOME)/.gitconfig"
	@ln -sf $(PWD)/git/.gitconfig $(HOME)

kittyconfig: kitty/kitty.conf
	@echo "Linking $(PWD)/kitty/kitty.conf -> $(HOME)/.config/kitty/kitty.conf"
	@ln -sf $(PWD)/kitty/kitty.conf $(HOME)/.config/kitty

weztermconfig: wezterm/.wezterm.lua
	@echo "Linking $(PWD)/wezterm/.wezterm.lua -> $(HOME)/.wezterm.lua"
	@ln -sf $(PWD)/wezterm/.wezterm.lua $(HOME)/.wezterm.lua
