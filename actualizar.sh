#!/bin/bash



# Actualizar la lista de paquetes

sudo apt -y update



# Actualizar los paquetes sin interacción

sudo DEBIAN_FRONTEND=noninteractive apt -y upgrade



# Limpiar paquetes innecesarios

sudo apt -y autoremove



# Corregir posibles errores

sudo apt update --fix-missing

sudo dpkg --configure -a

sudo apt -y install -f



# Actualizar paquetes de Snap y Flatpak

sudo snap refresh

flatpak update -y


#esta parte del escrip es inecesario, ya que repite lo que esta mas arriba, pero yo lo vuelvo a repetir por las dudas


# Limpiar paquetes innecesarios

sudo apt -y autoremove



# Limpiar caché

sudo apt -y autoclean



echo "<<---finalizado--->>"
