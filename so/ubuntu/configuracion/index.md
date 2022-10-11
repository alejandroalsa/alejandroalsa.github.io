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

apt-get install gnome-tweaks -y
apt-get install chrome-gnome-shell -y
apt-get install gnome-shell-extensions -y
apt-get install lm-sensors -y
apt-get install filezilla -y
apt-get install virtualbox -y
apt-get install git -y
snap install --clasic code 
snap install chromium
sudo snap install libreoffice

```