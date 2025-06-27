# Dotfiles
Dotfiles for minimal Arch-Linux desktop with Hyprland and other utilities.

TODO:
* Add yay installation.
* Add wine-ge installation after yay (remove from packages) or move yay installation before downloading ALL packages(?).

# WARNING

This setup should be done after making your base installation of ArchLinux.

## Packages installation

Before you start installing packages you should ensure the multilib repository is enabled. You can do so by checking the `[multilib]` section is uncommented in the file: `/etc/pacman.conf`.

To install the minimal desktop experience of these dotfiles you should move to the directory containing the file `desktop-packages` and run the following command : `cat desktop-packages | sudo pacman -S -`.

For my specific configuration you should move the configuration files into your configuration folder. You can do so with the following command: `sudo pacman cp -r /dotfiles/* ~/.config/`.

Now you need to config Greetd to work as your login manager. You'll need to replace the file under `etc/greetd/config.toml` with the one provided under `/greetd/config.toml`. For this you can use the command : `cp /greetd/config.toml /etc/greetd/config.toml`.

To finish the setup you should enable the login manager, to make this happen you can run the command: `sudo systemctl enable --now greetd.service`. 
