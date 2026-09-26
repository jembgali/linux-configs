# Configuration Guide

---
## Copying Configuration Files
This is jembgali's custom configuration files. You can copy it by doing:
`git clone https://github.com/jembgali/linux-configs.git`

> NOTE: This configuration is for a Fedora distribution. Will update the guide in the future.

---
## Font and Cursor
The font and cursor that is used in this configuration is **JetBrains Mono Nerd Font** and **BreezeX-Dark Cursor** 

You can install JetBrains Mono Nerd Font from the [nerd fonts website](https://www.nerdfonts.com/font-downloads) and BreezeX-Dark from its [repository](https://github.com/ful1e5/BreezeX_Cursor)

After downloading the font and cursor files, you need to extract it and put it either globally or user only. You can do this by:

### Font:
`
unzip JetBrainsMono.zip jetbrains-mono-nerd-font    # Extract and rename the folder
sudo mv jetbrains-mono-nerd-font /usr/share/fonts   # Move the folder to root (globally) 
mv jetbrains-mono-nerd-font ~/.local/share/fonts    # Move the folder to user (user-only)
`

### Cursor:
`
tar -xvf BreezeX-Dark.tar.gz         # Extract the folder
mv BreezeX-* ~/.local/share/icons    # Move the folder to root (globally)
sudo mv BreezeX-* /usr/share/icons   # Move the folder to user (user-only)
`

---
## Niri and Alacritty
By default niri will be installing alacritty as its terminal. You can configure niri by going in `~/.config/niri/config.kdl`.
Copy the configuration from the git clone with:
`cp ~/*path*/*to*/*the*/*cloned*/*repository*/linux-configs/niri/config.kdl ~/.config/niri/`

For alacritty, you will need to create a folder in the config and manually create the file for alacritty. You can do this with:
`mkdir -p ~/.config/alacritty && cd ~/.config/alacritty && touch alacritty.toml`
or you can move the configuration from the cloned repository:
`mv -r ~/*path*/*to*/*the*/*cloned*/*repository*/linux-configs/alacritty ~/.config`

---

