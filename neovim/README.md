# VBX Language Support for Neovim

Neovim supports Vim syntax files directly out of the box.

## Installation

### Using standard runtime directory

Copy or symlink the `vim/` directory structure to your Neovim config directory (`~/.config/nvim/`):

```bash
# Copy ftdetect and syntax files
mkdir -p ~/.config/nvim/ftdetect ~/.config/nvim/syntax
cp vim/ftdetect/vbx.vim ~/.config/nvim/ftdetect/
cp vim/syntax/vbx.vim ~/.config/nvim/syntax/
```

### Using a Plugin Manager

If you use a plugin manager like `vim-plug`, `packer.nvim`, or `lazy.nvim`, point it to the root of this repository or the `vim/` directory.

Example with `lazy.nvim`:
```lua
{
  "dir/or/repo/path/vbx-editors",
  config = function()
    -- VBX filetype and syntax will be loaded automatically from vim/
  end
}
```
