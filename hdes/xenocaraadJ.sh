#!/bin/sh
# Detalles de personalizaci�n de adJ
# Dominio p�blico de acuerdo a legislaci�n colombiana.
# 2007. vtamara@pasosdeJesus.org

ed /usr/src/xenocara/app/xdm/config/Xresources.cpp << EOF
,s/Welcome to/Bienvenido a/g
,s/Login:$/Cuenta:/g
,s/Login incorrect/Ingreso incorrecto/g
w
q
EOF
#Logos
ed /usr/src/xenocara/app/xdm/config/Xresources.cpp << EOF
,s/OpenBSD_/adJ_/g
w
q
EOF
cp arbolcd/medios/adJ_*xpm /etc/X11/xdm/pixmaps/


