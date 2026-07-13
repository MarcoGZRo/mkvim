# MKVIM

A personal and modular Neovim configuration designed to provide a
pleasant development experience.

> [!NOTE]
> This configuration is still under development.
>
> Java support is enabled through JDTLS. If you do not need Java
> development, you may remove the Java-specific configuration and skip
> installing the JDK and Maven.

---

## Requirements

### Required

- Neovim 0.11 or newer
- Git
- Python 3
- Node.js and npm
- Ripgrep
- curl or wget
- unzip, tar and gzip
- IosevkaTerm Nerd Font or another Nerd Font

### Optional

- JDK 21 or newer — required for Java and JDTLS
- Apache Maven — required for Maven projects
- LazyGit — optional Git interface
- A C/C++ compiler — needed only by plugins with native components
- `wl-clipboard` or `xclip` — Linux system clipboard integration

## Plugin manager

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim)
as its plugin manager.

---

## Installation

### Windows

Neovim reads its configuration from:

```text
%LOCALAPPDATA%\nvim
```

Normally:

```text
C:\Users\your_user\AppData\Local\nvim
```

Install the required dependencies:

```powershell
winget install Neovim.Neovim
winget install Git.Git
winget install Python.Python.3.13
winget install OpenJS.NodeJS.LTS
winget install BurntSushi.ripgrep.MSVC
```

Optional Java dependencies:

```powershell
winget install Microsoft.OpenJDK.21
winget install Maven.Maven
```

Optional LazyGit installation:

```powershell
winget install JesseDuffield.lazygit
```

Download a Nerd Font from:

[IosevkaTerm Nerd Font](https://www.nerdfonts.com/font-downloads)

Configure the selected font in Windows Terminal or your preferred
terminal emulator.

Verify the installation:

```powershell
nvim --version
git --version
python --version
node --version
npm --version
rg --version
```

Clone the repository:

```powershell
git clone https://github.com/MarcoGZRo/mkvim.git "$env:LOCALAPPDATA\nvim"
```

Open Neovim:

```powershell
nvim
```

---

### Debian and Ubuntu

Install the required dependencies:

```bash
sudo apt update

sudo apt install -y \
    git \
    curl \
    wget \
    unzip \
    zip \
    tar \
    gzip \
    python3 \
    python3-pip \
    nodejs \
    npm \
    ripgrep \
    build-essential \
    wl-clipboard \
    xclip
```

Optional Java dependencies:

```bash
sudo apt install -y openjdk-21-jdk maven
```

Download a Nerd Font from:

[IosevkaTerm Nerd Font](https://www.nerdfonts.com/font-downloads)

Clone the repository:

```bash
git clone https://github.com/MarcoGZRo/mkvim.git ~/.config/nvim
```

Open Neovim:

```bash
nvim
```

---

### Arch Linux

Install the required dependencies:

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
    nodejs \
    npm \
    ripgrep \
    base-devel \
    wl-clipboard \
    xclip
```

Optional Java dependencies:

```bash
sudo pacman -S --needed jdk21-openjdk maven
```

Optional LazyGit installation:

```bash
sudo pacman -S --needed lazygit
```

Install IosevkaTerm Nerd Font:

```bash
sudo pacman -S --needed ttf-iosevka-nerd
```

Clone the repository:

```bash
git clone https://github.com/MarcoGZRo/mkvim.git ~/.config/nvim
```

Open Neovim:

```bash
nvim
```

---

## Java support

Java development is provided by:

- Eclipse JDT Language Server
- nvim-jdtls
- nvim-cmp
- cmp-nvim-lsp
- Mason
- Maven and Gradle project detection
- Lombok Java agent
- Automatic import suggestions
- Import organization
- LSP navigation

JDTLS is installed automatically through Mason.

After changing a Maven `pom.xml`, JDTLS should update the project
automatically. If necessary, run:

```vim
:JdtUpdateConfig
```

Organize Java imports with:

```text
<leader>jo
```

To verify that JDTLS is attached:

```vim
:LspInfo
```

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

Telescope live grep requires Ripgrep:

```vim
:Telescope live_grep
```

---

## Updating

Update plugins from Neovim:

```vim
:Lazy update
```

Update language servers and tools:

```vim
:Mason
```

**I will gradually update this configuration. Thanks.**
