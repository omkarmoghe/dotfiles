#!/bin/zsh

SHELL=/bin/zsh

all: zsh gitconfig kitty
	@echo
	@echo "Don't forget to \`omz reload\` and install the system packages in $(PWD)/system/packages.txt!"

zsh: .zshrc
	@echo "Linking $(PWD)/.zshrc -> $(HOME)/.zshrc"
	@ln -sf $(PWD)/.zshrc $(HOME)

gitconfig: git/.gitconfig
	@echo "Linking $(PWD)/git/.gitconfig -> $(HOME)/.gitconfig"
	@ln -sf $(PWD)/git/.gitconfig $(HOME)

kitty: kitty/kitty.conf
	@echo "Linking $(PWD)/kitty/kitty.conf -> $(HOME)/.config/kitty/kitty.conf"
	@ln -sf $(PWD)/kitty/kitty.conf $(HOME)/.config/kitty
