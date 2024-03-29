# Dotfiles

All these settings and preferences are quite specific to me, myself and my MacBooks, use them as a reference rather than a "batteries included" setup.

## Installation

I wouldn't recommend this as I don't have a comprehensive list of installed software, the configuration assumes many things are already installed and this could break your dev environment.

1. Install nix on your new system see [reference](https://gist.github.com/mandrean/65108e0898629e20afe1002d8bf4f223).
2. Run `chmod +x ./install.sh && ./install.sh`
3. Create a local.nix file with `cp ~/.dotfiles/home/sample_local.nix ~/.dotfiles/home/local.nix`, in there fill out your install specific details
4. Run `home-manager switch` to install all the software, this will take a while.
5. I use [ 1password ](https://1password.com/) as an ssh agent to sign all of my commits, you'll need to install it [ here (mac)](https://1password.com/downloads/mac/), it is a paid service. To opt out of using it, update `home/git/default.nix` to match you git config
   1. To use the 1password agent follow these [ docs ](https://developer.1password.com/docs/ssh/git-commit-signing).
6. Everything should be installed now and ready to use, if there are any problems open up an issue on github!

### Manual installation of packages

This is only temporary. Until Yarn is usable on nix for my setup

#### Yarn

Yarn installs by default 16.14.2 and doesn't switch to other installed versions auto-magically [see issue](https://github.com/NixOS/nixpkgs/issues/14563)

[Yarnpkg.com/install](https://classic.yarnpkg.com/lang/en/docs/install/#mac-stable)

1. This should auto-magically install `curl -o- -L https://yarnpkg.com/install.sh | bash`
2. Install nvim dependancies `yarn global add eslint_d @fsouza/prettierd`

## Usage

- Configure node versions with fnm (fast node manager) `fnm default <version>`. Copilot needs at least node version 16.

## Current Tools

- Editor: [Neovim](https://github.com/neovim/neovim)
- Terminal: [Alacritty](https://github.com/alacritty/alacritty#installation)
  - Terminal Multiplexer: [Tmux](https://github.com/tmux/tmux)
- Shell: [Zsh](https://zsh.sourceforge.io/Intro/intro_toc.html)
  - Prompt: [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
  - Zsh Plugin Manger: [Nix Home-Manager](https://github.com/nix-community/home-manager)
  - Zsh Plugins:
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- Dotfiles Manager: None, just simple symlinks
- Package Manager: [Homebrew](https://brew.sh/)
- Password Manager: [1Password](https://1password.com/)
- GPG Program: [1Password](https://developer.1password.com/docs/ssh) supports ssh keys and commit signing with Touch-Id and Apple Watch
- CLI apps:
  - A better cat: [Bat](https://github.com/sharkdp/bat)
  - A better ls: [Exa](https://github.com/ogham/exa)
  - Git TUI: [Gitui](https://github.com/extrawurst/gitui#6--installation-top-)
  - Better HTOP: [btop](https://github.com/aristocratos/btop)
  - A tool to find and remove node_modules: [npkill](https://github.com/voidcosmos/npkill)
- Mac apps:
  - A nice keyboard based window manager: [Rectangle](https://rectangleapp.com/)
  - A clipboard manager: [Clippy](https://github.com/Clipy/Clipy)

## Old Tools

- Editors: [VsCode](https://github.com/microsoft/vscode), [LunarVim ("batteries included" Neovim config)](https://github.com/lunarvim/lunarvim)
- Terminals: [iTerm2](https://iterm2.com/), [Kitty](https://github.com/kovidgoyal/kitty)
  - Terminal Multiplexer: [Zellij](https://github.com/zellij-org/zellij#how-do-i-install-it)
- Shell: [Fish Shell](https://fishshell.com/)
  - Prompts: [(Zsh) Powerlevel 10k](https://github.com/romkatv/powerlevel10k), [(Zsh) Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
  - Zsh Plugin Manager: [Antigen](https://github.com/zsh-users/antigen)
- Dotfiles Managers: [Fresh](https://github.com/freshshell/fresh/), [Chezmoi](https://www.chezmoi.io/docs/install/), [GNU stow](https://www.gnu.org/software/stow/manual/stow.html), [Nix Home-Manager](https://github.com/nix-community/home-manager)
- Package Manager: [Nix Home-Manager](https://github.com/nix-community/home-manager)
