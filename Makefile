#!/bin/zsh

install: .zshrc
	@echo "Backing up $(HOME)/.zshrc to $(HOME)/.zshrc_backup"
	@rm -f $(HOME)/.zshrc_backup
	@mv $(HOME)/.zshrc $(HOME)/.zshrc_backup

	@echo "Linking $(PWD)/.zshrc to $(HOME)/.zshrc"
	@ln -s $(PWD)/.zshrc $(HOME)

	@echo "Done!"

gitconfig: git/.gitconfig
	@echo "Backing up $(HOME)/.gitconfig to $(HOME)/.gitconfig_backup"
	@rm -f $(HOME)/.gitconfig_backup
	@mv $(HOME)/.gitconfig $(HOME)/.gitconfig_backup

	@echo "Linking $(PWD)/git/.gitconfig to $(HOME)/.gitconfig"
	@ln -s $(PWD)/git/.gitconfig $(HOME)

	@echo "Done!"
