#!/bin/sh
# Variables de configuración para generar distribución Aprendiendo de Jesús
# Dominio público. 2007. vtamara@pasosdeJesus.org

V=5.3
VESP=""
# Versión que se está desarrollando

VP=`echo $V | sed -e "s/[.]//g"`
VU=`echo $V | sed -e "s/[.]/_/g"`

ARQ=`uname -m`
# Arquitectura

export R="OPENBSD_$VU"
export RADJ="ADJ_$VU"
# Ramas

PKG_PATH=ftp://ftp.openbsd.org/pub/OpenBSD/$V/packages/$ARQ/
PKG_PATH=ftp://ftp3.usa.openbsd.org/pub/OpenBSD/$V/packages/$ARQ/
PKG_PATH=ftp://filedump.se.rit.edu/pub/OpenBSD/$V/packages/$ARQ/
PKG_PATH=ftp://ftp.pasosdeJesus.org/pub/OpenBSD/$V/packages/$ARQ/
#Repositorio de paquetes usado --el último es el usado

METODOACT=ftp
# Metodo de actualización, puede ser ftp o rsync

SERVACT="miusuario@ftp.pasosdeJesus.org"
# Usado si METODOACT es rsync

OTRO="172.16.0.1"
OPSSHOTRO="-p11022"
USOTRO="micuenta"
DIROTRO="comp"
# Otro servidor para enviar/recibir adJ

RSYNCHOST="ftp.pasosdeJesus.org"

excluye="dialog-.* gnupg-2.* libstdc++-.* python-.* php-5.2.* php-gd-5.2.* php-pdo_pgsql-5.2.* php-pgsql-5.2.* php-mcrypt-5.2.*fphp-sqlite-5.2.* pear-Validate-.* pear-Auth-[0-9p.]*.tgz pear-HTML-QuickForm-.* postgresql-.* ruby-1.8.* tcl-* tk-* xfe-.*"
# Paquetes por excluir de descarga ftp de OpenBSD

RUTAKERNELREESPECIAL=""
# Si debe usarse un kernel por ejemplo sin rlphy

export DESTDIR=/destdir; 
export RELEASEDIR=/releasedir
export XSRCDIR=/usr/src/xenocara;
# Directorios para compilación 

# Estas variables controlan operacion de distribucion.sh pueden ser s o n
export autoCvs=n
# Actualizar fuentes y portes del CVS de OpenBSD 
export autoCompKernel=n
# Transformar y compilar kernel 
export autoInsKernel=n
# Instalar kernel compilado
export autoActZonasHorarias=n
# Actualizar zonas horarias
export autoCompBase=n
# Transformar y compilar sistema base
export autoElimCompBase=n
# Elimina Compila Base
export autoDist=n
# Crear distribución en /releasedir y /destdir
export autoBsdrd=n
# Crear bsd.rd
export autoElimDist=n
# Eliminar distribución de /destdir y /releasedir
export autoX=n
# Transformar y compilar Xenocara
export autoXDist=n
# Distribución de Xenocara en /destdir y /releasedir
export autoElimXDist=n
# Elimina distribución de Xenocara
export autoJuegosInstalacion=n
# Crear juegos de instalación en subdirectorio de este
export autoPaquetes=n
# Compilar paquetes especiales que hacen parte de la distribución

export autoMasPaquetes=s
# Descargar resto de paquetes de repositorio PKG_PATH
export autoSite=s
# Generar siteXX.tgz
export autoTextos=s
# Generar textos Novedades.txt y demás


qemuboot=d
# Unidad por la cual arrancar por defecto con hdes/qemu.sh

if (test -f "ver-local.sh") then {
	. ./ver-local.sh
} fi;