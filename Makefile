#!/bin/zsh

SHELL=/bin/zsh

all: zshrc gitconfig kittyconfig
	@echo
	@echo "Don't forget to \`omz reload\` and install the system packages in $(PWD)/system/packages.txt!"

zshrc: .zshrc
	@echo "Linking .zshrc -> $(HOME)/.zshrc"
	@ln -sf $(PWD)/.zshrc $(HOME)

gitconfig: git/.gitconfig
	@echo "Linking git/.gitconfig -> $(HOME)/.gitconfig"
	@ln -sf $(PWD)/git/.gitconfig $(HOME)
