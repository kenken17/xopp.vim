# Intro

Xopp, sounds "swap", a simple plugin for swapping two words. This has been on 
my dotfiles/ folder for a long time for convenient. It's time to move out as a
plugin and maintained by it own.

Plugin under: [https://github.com/kenken17/xopp.vim](https://github.com/kenken17/xopp.vim)

# Installation

Use any of your plugin managers should not be any issue. I am using vim-plug
myself. So did not test on other. If there is issue on any other plugin
managers, you can leave a message, I will try to look into it.

**`Plug 'kenken17/xopp.vim'`**

# Mappings

If you don't like the default mapping (only one actually), you can turn off:

**`let g:xopp_map_keys=0`**

**`map <Leader>x :Xopp<CR>`**   " default mapping


# Default Words

Currently, only below are able to swap. User defined word will be added in the
future. When I have more free time and know how to to do. ;p

- true <> false
- read <> write
- get <> post
- yes <> no
- left <> right
- top <> bottom
- height <> width
- margin <> padding
- let <> const

# License

MIT
