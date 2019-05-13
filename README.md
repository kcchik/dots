# Mac Terminal

### iTerm2

```
brew cask install iterm2
```

### Zsh

```
brew install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Theme

[Bluloco Dark](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/BlulocoDark.itermcolors)

iTerm2 → Preferences → Colors → Color Presets → Import

### Font

[Meslo](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf) (Click 'View raw' to download)

iTerm2 → Preferences → Text → Change Font

# VSCode

### Extensions

- Bluloco Dark
- Code Runner
- Beautify
- ESLint
- Ruby
- Python

### Font

[Meslo](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf) (Click 'View raw' to download) 

### settings.json

```json
{
  "editor.fontFamily": "Meslo LG M for Powerline, Menlo, monospace",
  "editor.tabSize": 2,
  "editor.glyphMargin": false,
  "editor.folding": false,
  "workbench.colorTheme": "Bluloco Dark",
  "workbench.startupEditor": "none",
  "workbench.tips.enabled": false,
  "workbench.activityBar.visible": false,
  "workbench.statusBar.visible": false,
  "workbench.statusBar.feedback.visible": false,
  "workbench.editor.closeOnFileDelete": true,
  "files.trimTrailingWhitespace": true,
  "files.trimFinalNewlines": true,
  "explorer.confirmDelete": false,
  "zenMode.centerLayout": false
}
```
