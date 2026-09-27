# Alacritty

You can install alacritty from their [repository](https://github.com/alacritty/alacritty/releases) and installing the latest release from it. Or if you are using a package manager you can check and install with that instead.

For Fedora:
```sh
sudo dnf install alacritty
```

You will need to create a folder in the `~/.config` directory and manually create the file for alacritty. You can do this with:

```sh
mkdir -p ~/.config/alacritty && cd ~/.config/alacritty && touch alacritty.toml
```
or you can move the configuration from the cloned repository:

```sh
mv -r ~/path/to/the/cloned/repository/linux-configs/alacritty ~/.config
```
