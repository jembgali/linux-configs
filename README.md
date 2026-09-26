# Configuration Guide

## Copying Configuration Files
This is jembgali's custom configuration files. You can copy it by doing:<br>
`git clone https://github.com/jembgali/linux-configs.git`

> NOTE: This configuration is for a Fedora distribution. Will update the guide in the future.

## Font and Cursor
The font and cursor that is used in this configuration is **JetBrains Mono Nerd Font** and **BreezeX-Dark Cursor** 

You can install JetBrains Mono Nerd Font from the [nerd fonts website](https://www.nerdfonts.com/font-downloads) and BreezeX-Dark from its [repository](https://github.com/ful1e5/BreezeX_Cursor)

After downloading the font and cursor files, you need to extract it and put it either globally or user only. You can do this by:

### Font:

```sh
unzip JetBrainsMono.zip jetbrains-mono-nerd-font    # Extract and rename the folder
sudo mv jetbrains-mono-nerd-font /usr/share/fonts   # Move the folder to system (globally) 
mv jetbrains-mono-nerd-font ~/.local/share/fonts    # Move the folder to user (user-only)
```

### Cursor:

```sh
tar -xvf BreezeX-Dark.tar.gz         # Extract the folder
mv BreezeX-* ~/.local/share/icons    # Move the folder to system (globally)
sudo mv BreezeX-* /usr/share/icons   # Move the folder to user (user-only)
```

## Niri and Alacritty
By default niri will be installing alacritty as its terminal. You can configure niri by going in `~/.config/niri/config.kdl`.
Copy the configuration from the git clone with:

```sh
cp ~/path/to/the/cloned/repository/linux-configs/niri/config.kdl ~/.config/niri/
```

For alacritty, you will need to create a folder in the config and manually create the file for alacritty. You can do this with:

```sh
mkdir -p ~/.config/alacritty && cd ~/.config/alacritty && touch alacritty.toml
```
or you can move the configuration from the cloned repository:

```sh
mv -r ~/path/to/the/cloned/repository/linux-configs/alacritty ~/.config
```

## Dolphin File Manager
If you are not using KDE Plasma, you will need to do this. The theme that was applied for the file manager is **Monochrome Theme** and **Papyrus Icon Theme**.

> If you are using KDE Plasma, you can install both from the theme store.

To set up the file manager and be able to configure it, you need to install it by:

```sh
sudo dnf install dolphin   # File manager itself
sudo dnf install qt5ct qt6ct kvantum kdialog xdg-desktop-portal-kde   # Used to configure the dolphin file manager
sudo dnf install papirus-icon-theme   # Install the papirus icon theme
cd Downloads && git clone --depth=1 https://github.com/pwyde/monochrome-kde.git   # Clone the monochrome github
```

For the monochrome theme, there will be a couple of things to note.
- First you do not need all of the files in the repository.
- You would only really need only the Kvantum, GTK, and color-schemes.
    - If you want to install all of it you can do so by doing `bash install.sh --install` in the same directory as the repository.
- To apply the Kvantum:

- To apply the GTK:


After installing the necessary tools to configure the file manager, you would want to use the same configuration to be used for the file picker in your browser. You can do this by:

```sh
mkdir -p ~/.config/xdg-desktop-portal-kde && cd ~/.config/xdg-desktop-portal-kde && touch portals.conf
```

After which you need to edit the portals.conf file. You can do this by:

```nano
[preferred]
default=kde;gtk
org.freedesktop.impl.portal.FileChooser=kde
```


