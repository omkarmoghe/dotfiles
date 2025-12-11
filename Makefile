fishconfig: fish/config.fish
	@echo "Sourcing fish/config.fish..."
	@fish $(PWD)/fish/config.fish

gitconfig: git/.gitconfig
	@echo "Linking git/.gitconfig -> $(HOME)/.gitconfig"
	@ln -sf $(PWD)/git/.gitconfig $(HOME)
