# Dotfiles

Dotfiles are managed with GNU Stow.  

```bash
stow . --target $HOME --dotfiles
```

Removing symlinks
```bash
stow -D . --dotfiles
```

## zsh plugins

Zsh is using [zsh-nvim](https://github.com/lukechilds/zsh-nvm).

To install run:
```bash
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
```

## Packages

Following package is needed to render latex in neovim
```
brew install utftex tree-sitter
```
