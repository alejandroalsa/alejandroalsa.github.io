---
page.title: "Configuración Ubuntu 22"
---

# Configuración Ubuntu 22

Configuración Ubuntu 22

## Instalacion de Software

El software que se instalara es:

*   Gnome Tweaks
*   Chrome Gnome Shell
*   Gnome Shell Extensions
*   LM Sensors
*   Filezilla
*   Virtualbox
*   Git
*   Visual Studio Code
*   Chromium
*   Libre Office

```bash

clear
set -x

apt-get update -y
apt-get upgrade -y

apt-get install gnome-tweaks chrome-gnome-shell gnome-shell-extensions lm-sensors filezilla virtualbox git -y
snap install --classic code 
snap install chromium 
snap install libreoffice

```