fishconfig: fish/config.fish
	@echo "Linking fish/config.fish -> $(HOME)/.config/fish/config.fish"
	@mkdir -p $(HOME)/.config/fish
	@ln -sf $(PWD)/fish/config.fish $(HOME)/.config/fish/

gitconfig: git/.gitconfig
	@echo "Linking git/.gitconfig -> $(HOME)/.gitconfig"
	@ln -sf $(PWD)/git/.gitconfig $(HOME)
