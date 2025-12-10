#!/bin/zsh

SHELL=/bin/zsh

gitconfig: git/.gitconfig
	@echo "Linking git/.gitconfig -> $(HOME)/.gitconfig"
	@ln -sf $(PWD)/git/.gitconfig $(HOME)
