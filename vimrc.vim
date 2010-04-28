call pathogen#runtime_append_all_bundles()

" the order _does_ matter
source ~/.vim/config/settings.vim
source ~/.vim/config/plugins.vim
source ~/.vim/config/autocommands.vim
source ~/.vim/config/commands.vim
source ~/.vim/config/mappings.vim
