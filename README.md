# Niri-For-Ubuntu24
<h1 align="center"><img alt="niri" src="https://github.com/user-attachments/assets/07d05cd0-d5dc-4a28-9a35-51bae8f119a0"></h1>
<p align="center">A scrollable-tiling Wayland compositor but for Ubuntu 24 by: Joel</p>
<p align="center">Credits to the creator and dev of Niri: https://github.com/niri-wm/niri</p>

## About
Niri is a Window Manager for Ubuntu, Fedora, and more subsystems of Linux. But Niri is only available for Ubuntu 25+ but I use Ubuntu 24 and I don't go upgrade my sistem for Ubuntu 26.
So I created a way for Niri works on Ubuntu 24.. do it for yourself and with responsability

1- Install the necessary build dependencies:
```bash
sudo apt install gcc clang libudev-dev libgbm-dev libxkbcommon-dev \
  libegl1-mesa-dev libwayland-dev libinput-dev libdbus-1-dev \
  libsystemd-dev libseat-dev libpipewire-0.3-dev libpango1.0-dev \
  libdisplay-info-dev   
```
2- Next, install the latest stable Rust toolchain from rustup.rs and clone the repository:
```bash
git clone https://github.com/YaLTeR/niri.git
cd niri   
```
3- Build and install the compositor manually:
```bash
cargo build --release --locked
sudo install -m 755 target/release/niri /usr/local/bin/niri
sudo install -m 755 resources/niri-session /usr/local/bin/niri-session
sudo mkdir -p /usr/local/share/wayland-sessions/
sudo install -m 644 resources/niri.desktop /usr/local/share/wayland-sessions/
sudo mkdir -p /usr/local/share/xdg-desktop-portal/
sudo install -m 644 resources/niri-portals.conf /usr/local/share/xdg-desktop-portal/
sudo install -m 644 resources/niri.service /etc/systemd/user/
sudo install -m 644 resources/niri-shutdown.target /etc/systemd/user/
systemctl --user daemon-reload   
```
After installation, log out and select the Niri session from your display manager, or run niri-session from a TTY or from your GDM
