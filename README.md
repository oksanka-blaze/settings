**FZF:**

$ brew install fzf

$ /usr/local/opt/fzf/install


**Vim:**

[Vundle](https://github.com/VundleVim/Vundle.vim) :

$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

[Solarized colors for vim](https://github.com/altercation/vim-colors-solarized) :

 $ cd ~/.vim/bundle
 
 $ git clone git://github.com/altercation/vim-colors-solarized.git


**Markdown:**

https://github.com/suan/vim-instant-markdown

$ brew install node

$ npm -g install instant-markdown-d

add `Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}` to Vim

`:PluginInstall` from Vim

**iTerm2:**

Copy profiles:

$ cd ~/Library/Application\ Support/iTerm2/DynamicProfiles/

$ mv iterm2_profiles.json .

Preferences -> Profiles -> select imported profile -> Other Actions -> Set as Default

Preferences -> Advanced -> Mouse -> Scroll wheel sends arrow keys when in alternat screen mode

Restart iTerm2
