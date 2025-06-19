#!/bin/bash



# Actualizar la lista de paquetes

sudo /usr/bin/apt -y update



# Actualizar los paquetes sin interacción

sudo DEBIAN_FRONTEND=noninteractive /usr/bin/apt -y upgrade



# Limpiar paquetes innecesarios

sudo /usr/bin/apt -y autoremove



# Corregir posibles errores

sudo /usr/bin/apt update --fix-missing

sudo dpkg --configure -a

sudo /usr/bin/apt -y install -f



# Actualizar paquetes de Snap y Flatpak

sudo snap refresh

flatpak update -y


#esta parte del escrip es inecesario, ya que repite lo que esta mas arriba, pero yo lo vuelvo a repetir por las dudas


# Limpiar paquetes innecesarios

sudo /usr/bin/apt -y autoremove



# Limpiar caché

sudo /usr/bin/apt -y autoclean



echo "<<---finalizado--->>"
