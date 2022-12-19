.DEFAULT_GOAL := help

install: install-bash install-vim install-karabiner install-ideavim ## Install all dotfiles.

install-bash: git-completion.bash ## Install bash-related dotfiles.
	cp $^ ~/.git-completion.bash
	cp .bash_profile ~/.bash_profile
	cp .bashrc ~/.bashrc
	cp .bash_prompt ~/.bash_prompt
	cp .bash_aliases ~/.bash_aliases
	cp .bash_aliases_git ~/.bash_aliases_git

install-vim: ## Install vim configuration.
	cp .vimrc ~/.vimrc

install-ideavim: ## Install ideavim configuration.
	cp .ideavimrc ~/.ideavimrc

install-karabiner: ## Install karabiner configuration.
	cp karabiner.json ~/.config/karabiner/karabiner.json

help: ## Print this help.
	@grep -E '^[0-9a-zA-Z%_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

git-completion.bash:
	wget -O git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
