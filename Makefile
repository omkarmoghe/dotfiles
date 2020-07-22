install: .zshrc
	@echo "Backing up .zshrc to $(HOME)/.zshrc_backup"
	rm -f $(HOME)/.zshrc_backup
	mv $(HOME)/.zshrc $(HOME)/.zshrc_backup
	@echo "Linking $(PWD)/.zshrc"
	ln -s $(PWD)/.zshrc $(HOME)/.zshrc
	@echo "Done!"

git: git/.gitconfig
	@echo "Backing up .gitconfig to $(HOME)/.gitconfig_backup"
	rm -f $(HOME)/.gitconfig_backup
	mv $(HOME)/.gitconfig $(HOME)/.gitconfig_backup
	@echo "Linking $(PWD)/.gitconfig"
	ln -s $(PWD)/.gitconfig $(HOME)/.gitconfig
	@echo "Done!"
