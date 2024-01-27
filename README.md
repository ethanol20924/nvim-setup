# NVIM Setup

Built off [ kickstart.nvim ]( https://github.com/nvim-lua/kickstart.nvim ). Made for my own
[ iTerm2 ]( https://iterm2.com/ ) setup using [ oh-my-zsh ]( https://ohmyz.sh/ ) but should 
be able to be loaded onto anything. Also includes my tmux configuration which I basically 
just stole from [ Josean Martinez ]( https://youtu.be/U-omALWIBos ) with the most minor of 
changes. It contains all the usual stuff like a package manager 
([ lazy.nvim ]( https://github.com/folke/lazy.nvim )), fuzzy finder 
([ telescope.nvim ]( https://github.com/nvim-telescope/telescope.nvim ) and 
[ telescope-fzf-native.nvim ]( https://github.com/nvim-telescope/telescope-fzf-native.nvim )),
tree sitter ([ nvim-treesitter ]( https://github.com/nvim-treesitter/nvim-treesitter )) and
some more, but that's boring, so here's a list of the stuff I've added.

### Theme

**[ starry.nvim ]( https://github.com/ray-x/starry.nvim )**
- Lets me swap between a bunch of different themes without having to reinstall new ones

**[ dashboard-nvim ]( https://github.com/nvimdev/dashboard-nvim )**
- Dashboard plugin, just so it looks nice when I first open this up

**[ transparent.nvim ]( https://github.com/xiyaowong/transparent.nvim )**
- For when I have a fun background

### Editing QoL

**[ nvim-autopairs ]( https://github.com/windwp/nvim-autopairs )**
- Bracket autocompletion - can play up sometimes but has been mostly nice to me

**[ nvim-surround ]( https://github.com/kylechui/nvim-surround )**
- Plugin to surround selected blocks - super useful for parentheses and the like

**[ git-conflict ]( https://github.com/akinsho/git-conflict.nvim )**
- Highlights and visualises git conflicts

**[ cmp-spell ]( https://github.com/f3fora/cmp-spell )**
- Spell checker because I'm and engineer and can't spell

**[ markdown-preview.nvim ]( https://github.com/iamcco/markdown-preview.nvim )**
- Plugin to preview markdown

**[ nvim-ufo ]( https://github.com/kevinhwang91/nvim-ufo )**
- Plugin for folding code sections - works out of the box which is super nice

### Navigation

**[ neo-tree.nvim ]( https://github.com/nvim-neo-tree/neo-tree.nvim )**
- File tree is a bit nicer to look at than netrw

**[ symbols-outline.nvim ]( https://github.com/simrat39/symbols-outline.nvim )**
- Shows tree of all the symbols in the currently open file

**[ nvim-tmux-navigation ]( https://github.com/alexghergh/nvim-tmux-navigation )**
- Used for tmux integration

**[ oil.nvim ]( https://github.com/stevearc/oil.nvim )**
- So this is pretty cool, you can navigate through files in a netrw like interface but can add, rename and remove files just by editing the lines in the buffer

**[ hop.nvim ]( https://github.com/phaazon/hop.nvim )**
- Fun plugin which I'm using to redefine 'f' and 't' motions. Currently being used for jumping to different points in the line quickly.

### Other

**[ vim-wakatime ]( https://github.com/wakatime/vim-wakatime )**
- Why do I even look at these stats, I barely even program

**[ ros-nvim ]( https://github.com/taDachs/ros-nvim )**
- Lets me finally navigate through launch links and peek at message definitions

**[ cmp-matlab ]( https://github.com/mstanciu552/cmp-matlab )**
- MATLAB completion source for nvim-cmp, not super extensive but it does the trick

There are a few others included but I don't really use them so I won't mention them.

## NOTES

Wanted to put a note here as a reminder that some packages and plugins will not compile 
on AppleClang. This is rather annoying but I guess it's easier to always target standard
LLVM if possible. To do this make sure to set CC (and CXX, though this actually isn't 
necessary) in .zshrc or .zsh_profile.

- Install ripgrep
```
brew install ripgrep
```

- Install npm
```
brew install node
```

- Install tpm for tmux integration
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

- Also install clangd locally and not through Mason as every machine I use should have 
clangd

I've missed a lot of dependencies so oh well. Whoops
