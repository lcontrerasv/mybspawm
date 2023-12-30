# My bsPwm

## _Step-by-step guide to personalize your work environment_

## Requirements

You need a Linux based operating system and a user with a zsh shell configured.

## Configuration

##### Libraries and Tools setup

First, install the following necessary tools and libraries:

```sh
sudo apt install -y build-essential cmake cmake-data pkg-config git vim kitty python3-sphinx python3-xcbgen xcb libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev libxinerama1 libxinerama-dev libcairo2-dev libxcb1-dev libxcb-composite0-dev xcb-proto libxcb-image0-dev libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libpulse-dev libjsoncpp-dev libmpdclient-dev libuv1-dev libnl-genl-3-dev meson libxext-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-present-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre3 libpcre3-dev libevdev-dev uthash-dev libx11-xcb-dev libxcb-glx0-dev libev-dev rofi feh
```

Note: if you get a error for xcb, don't worry and just remove from the previous line and run the command again.

## Install and config bspwm

Clone the following git repositories to ~/Downloads folder and build:

| Name  | URL                                               |
| ----- | ------------------------------------------------- |
| bspwm | [https://github.com/baskerville/bspwm.git][bspwm] |
| sxhkd | [https://github.com/baskerville/sxhkd.git][sxhkd] |

```sh
git clone https://github.com/baskerville/bspawm.git
cd bspawm
make & sudo make install
```

```sh
git clone https://github.com/baskerville/sxhkd.git
cd bspawm
make & sudo make install
```

#### bspwm configuration file

Copy the following samples files from this repository to your ~/.config folder:

```sh
mkdir ~/.config/{bspwm,sxhkd}
cp ./examples/bspwmrc ~/.config/bspwm
cp ./examples/sxhkdrc ~/.config/sxhkd

mkdir ~/.config/bspwm/scripts
cp ./scripts/bspwm_resize ~/.config/bspwm/scripts/
```

#### Install polybar

Clone polybar repository into ~/Downloads folder:

```sh
cd ~/Downloads
git clone --recursive https://github.com/polybar/polybar.git
cd polybar
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo make install
```

#### Install Picom

Clone picom repository into ~/Downloads folder:

```sh
cd ~/Downloads
git clone https://github.com/ibhagwan/picom.git
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build & sudo ninja -C build install
```

## Restart

```sh
kill -9 -1
```

## Extras

#### Changing the system font

```sh
cd ~/Downloads
wget -q https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
sudo unzip Hack.zip -d /usr/local/share/fonts
rm -rf Hack.zip
```

[//]: # "These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax"
[git-repo-url]: https://github.com/lcontrerasv/mybspwm.git
[baskerville]: https://github.com/baskerville
[bspwm]: https://github.com/baskerville/bspwm.git
[sxhkd]: https://github.com/baskerville/sxhkd.git
[pbar]: https://github.com/polybar/polybar.git
