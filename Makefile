.DEFAULT_GOAL := help

install: install-bash install-vim install-ideavim ## Install all dotfiles.

install-bash: git-completion.bash ## Install bash-related dotfiles.
	cp $^ ~/.git-completion.bash
	cp .bash_profile ~/.bash_profile
	cp .bashrc ~/.bashrc
	cp .bash_prompt ~/.bash_prompt
	cp .bash_aliases ~/.bash_aliases

install-vim: ## Install vimrc.
	cp .vimrc ~/.vimrc

install-ideavim: ## Install ideavim.
	cp .ideavimrc ~/.ideavimrc

help: ## Print this help.
	@grep -E '^[0-9a-zA-Z%_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | \
	awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

git-completion.bash:
	wget -O git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
