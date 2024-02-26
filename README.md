# Neovim Configuration Setup

This guide will walk you through setting up your Neovim configuration using the Lazy Vim Manager, which provides lazy loading of plugins and configurations for optimized performance.

### Clone your Neovim configuration repository

```bash
git clone <my_repository_url> <path_to_neovim_config_directory>
```

### Navigate to the Neovim configuration directory

```bash
cd <path_to_neovim_config_directory>
```

### Install packer.nvim for managing plugins

```bash
git clone https://github.com/YOUR_USERNAME/lazy-vim-manager ~/.lazy-vim-manager
```

### Install the Neovim plugin manager

```bash
cd < path_to_lazy_config_directory >/.lazy-vim-manager
./init.sh
```

### Install Lua language server or any other language server that you need

```bash
pnpm install -g lua-lsp
```

### Install required dependencies for specific plugins

```bash
npm install -g typescript typescript-language-server eslint_d prettier stylua
```

### Update and install tree-sitter parsers

```bash
nvim --headless -c "TSUpdateSync"
```

### Your Neovim configuration is now set up and ready to use!

Happy coding!
