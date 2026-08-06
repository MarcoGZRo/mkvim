# MKVIM

A very simple, personal Neovim configuration, set up for Java programming :)

---
## Main plugins
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-jdtls](https://github.com/mfussenegger/nvim-jdtls)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [Mason](https://github.com/mason-org/mason.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)
- [goto-preview](https://github.com/rmagatti/goto-preview)
- [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)

## Requirements

### Dependencies

- Neovim 0.11+
- Git
- Python
- Ripgrep
- IosevkaTerm Nerd Font (optional)
- LazyGit
- JDK 21+
- Maven/Gradle
- C/C++ compiler

## Plugin manager
- LazyVim: [lazy.nvim](https://github.com/folke/lazy.nvim)
---
## Installation

### Windows

Install the required dependencies:

```powershell
winget install Neovim.Neovim
winget install Git.Git
winget install Python.Python.3.13
winget install BurntSushi.ripgrep.MSVC
winget install Microsoft.OpenJDK.21
winget install Maven.Maven
winget install JesseDuffield.lazygit
```

Download Nerd Font from:

[IosevkaTerm Nerd Font](https://www.nerdfonts.com/font-downloads)

Configure the selected font in your preferred terminal emulator.

Clone this repository:

```powershell
git clone https://github.com/MarcoGZRo/mkvim.git "$env:LOCALAPPDATA\nvim"
```
---

### Arch Linux

Install dependencies:

```bash
sudo pacman -S --needed \
    neovim \
    git \
    curl \
    wget \
    unzip \
    zip \
    tar \
    gzip \
    python \
    python-pip \
    ripgrep \
    base-devel \
    wl-clipboard \
    xclip \
    jdk21-openjdk \
    maven \
    lazygit \
    ttf-iosevka-nerd
```

Clone the repository:

```bash
git clone https://github.com/MarcoGZRo/mkvim.git ~/.config/nvim
```
---

**Thanks**
