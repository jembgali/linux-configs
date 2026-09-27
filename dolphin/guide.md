## Dolphin File Manager

If you are not using KDE Plasma, you will need to do this. The theme that was applied for the file manager is **Monochrome Theme** and **Papirus Icon Theme**.

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
- To apply the Kvantum and qt5ct/qt6ct:
    - If Kvantum does not automatically recognizes that there is an installed Monochrome theme you would just need to move the folder manually. You can do this by:

    ```sh
    cp -r ~/Downloads/Monochrome/Kvantum/
    ```
    - After copying the files you can open Kvantum and go to the **Change/Delete Theme Tab**and you can select any Monochrome Theme.
    - You can then go to the next Kvantum tabs to configure the themes to your liking.
    - Open qt5ct/qt6ct and apply these settings: 
        - `Appearance > Style > kvantum/kvantum-dark`
        - `Appearance > Color Scheme > KvSimplicityDark`
        - `Fonts > General & Fixed Width > JetBrainsMono Nerd Font 9`
        - `Icon Theme > Papirus-Dark`
    - If you want to modify it further, do as you wish.

- To apply the GTK:
Honestly I haven't found a good way to apply the monochrome theme for GTK.


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
