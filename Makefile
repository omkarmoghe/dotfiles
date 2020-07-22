install: .zshrc
	echo "Linking .zshrc..."
	# TODO(omkarmoghe): ln -s -f $(pwd)/.zshrc $HOME/
	echo "Building path/env..."
	# TODO(omkarmoghe): source ./**/env.zsh
	echo "Building aliases..."
	# TODO(omkarmoghe): source ./**/alias.zsh
	echo "Building config..."
	# TODO(omkarmoghe): source ./**/*.zsh
