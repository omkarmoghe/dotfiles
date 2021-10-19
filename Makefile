#!/bin/zsh

SHELL=/bin/zsh

all: zsh gitconfig
	@echo
	@echo "Don't forget to \`omz reload\` and install the system packages in $(PWD)/system/packages.txt!"

zsh: .zshrc
	@echo "Backing up $(HOME)/.zshrc -> $(HOME)/.zshrc_backup"
	@rm -f $(HOME)/.zshrc_backup
	@mv $(HOME)/.zshrc $(HOME)/.zshrc_backup

	@echo "Linking $(PWD)/.zshrc -> $(HOME)/.zshrc"
	@ln -s $(PWD)/.zshrc $(HOME)

gitconfig: git/.gitconfig
	@echo "Backing up $(HOME)/.gitconfig -> $(HOME)/.gitconfig_backup"
	@rm -f $(HOME)/.gitconfig_backup
	@mv $(HOME)/.gitconfig $(HOME)/.gitconfig_backup

	@echo "Linking $(PWD)/git/.gitconfig -> $(HOME)/.gitconfig"
	@ln -s $(PWD)/git/.gitconfig $(HOME)
