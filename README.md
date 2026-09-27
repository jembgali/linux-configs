# Configuration Guide

## Copying Configuration Files
This is jembgali's custom configuration files. You can copy it by doing:<br>
`git clone https://github.com/jembgali/linux-configs.git`

> NOTE: This configuration is for a Fedora distribution. Will update the guide in the future.

## Guide
This is the process or order of operations of how you should do the installation.

1. Install the [font](./font/guide.md) and [cursor](./cursor/guide.md) first.
2. Install niri along with noctalia and other applications that the custom niri config uses.
    - The applications that you will need for the custom niri to run are:
        - Niri
        - Noctalia
        - Kitty
        - Neovim
        - Dolphin
        - Brave Origin
    - You can install those by doing:

    ```sh
    sudo dnf install niri noctalia kitty neovim dolphin
    ```
    - You can install brave origin by going to their [installation guide](https://brave.com/origin/linux/)
3. Then you would need to [setup dolphin](./dolphin/guide.md) in order for the file picker to work on browsers.
4. Then you can copy the [noctalia settings](./noctalia/noctalia.md).
5. Then you can install whatever other apps you would need/want to use.
