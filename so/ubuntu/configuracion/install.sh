# Script para la instalación y configuración de software en Ubuntu 22 LTS.

clear

set -x

apt-get update -y
apt-get upgrade -y

apt-get install gnome-tweaks, chrome-gnome-shell, gnome-shell-extensions, lm-sensors, filezilla, virtualbox, git -y
snap install --clasic code, chromium, libreoffice

