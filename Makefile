.PHONY: common
common: ohmyzsh dotbot vim-plugins

.PHONY: apt
apt:
	sudo apt install $(shell grep -vE "^\s*#" apt.txt | tr "\n" " ")

.PHONY: dotbot
dotbot:
	git submodule update --init --recursive
	sh ./dotfiles/dotbot/bin/dotbot -c ./dotfiles/dotbot.conf.yaml
    
.PHONY: ohmyzsh
ohmyzsh:
	curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > /tmp/ohmyzsh.sh
	chmod +x /tmp/ohmyzsh.sh
	sh -c /tmp/ohmyzsh.sh

.PHONY: vim-plugins
vim-plugins:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
