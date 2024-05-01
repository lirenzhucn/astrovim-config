# Liren's AstroNvim Config

This configuration repo is inspired by [Nik's AstroNvim Template](https://github.com/OpticSeven/astrovim-config).

Most of this NeoVim configuration is stock AstroNvim including the leader key `space`

https://astronvim.com/

I have a few pre-installed packages with custom commands:

##### Markdown Preview

This opens a MarkDown preview of the current file in the browser.

Commands:

`:MardownPreview` Launch the markdown preview in your browser.

`:MardownPreviewStop` Stops the markdown preview in your browser.

You may need to run this command if it doesn't work!
```
:call mkdp#util#install()
```

##### Tabnine
Note: This is __DISABLED__ by default. Remove the top line of `tabnine.lua` to enable tabnine.

Default key maps:

Accept suggestions `<ctrl-s>`

Reject suggestions `<ctrl-j>`

##### Other Changes
1. some minor fixes for working with clangd.

## 🛠️ Installation

**NOTE:** This is for AstroNvim v4+

##### Install Nerd fonts 

Here is the one I use:

https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/0xProto.zip

```shell
mkdir -p ~/.fonts
cp ~/Downloads/0xProto.zip ~/.fonts
cd ~/.fonts
unzip 0xProto.zip && rm 0xProto.zip
fc-cache -fv
```

#### Install NeoVim
```shell
sudo snap install nvim --classic
```

#### Make a backup of your current nvim and shared folder (Optional)

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template (Optional)

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/OpticSeven/astrovim-config.git ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```
