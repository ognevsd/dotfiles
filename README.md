# Dotfiles

Dotfiles are managed with GNU Stow.  

```bash
stow . --target $HOME --dotfiles
```

Removing symlinks
```bash
stow -D . --dotfiles
```
