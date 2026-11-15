## Nautilus File Manager

To set up the file manager, you will need to install it by:

``` sh
sudo dnf install nautilus # file manager itself, it will be called "files" if you have an app launcher set up.
sudo dnf install papirus-icon-theme # optional if you want to use papirus-icon-theme
sudo dnf install adw-gtk3-theme # needed if you want to use the theme for other gtk apps
```

There are many ways to theme the file manager, but my preferred method is using noctalia. There are commonalities to the preferred method, like:
    - Making the directory for gtk theming: `mkdir ~/.config/gtk-3.0`

Depending on your method you would either create more directories in `~/.config/gtk-3.0` or if you want to use only one theme like with noctalia, you would only need to make the `gtk.css` file.

After which, you can either set a custom icon theme or if you have a directory theme with assets it might already have an icon theme with it.

If it doesn't automatically set the theme, you should do:

```sh
gsettings set org.gnome.desktop.interface gtk-theme 'your-theme' # The actual theme
gsettings set org.gnome.desktop.interface icon-theme 'your-theme' # Icon theme
```
