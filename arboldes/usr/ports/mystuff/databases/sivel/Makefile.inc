# $adJ$

# Port in the public domain.

COMMENT=	"Information system of political violence"

PKGNAME=	sivel-${VERSION}
CATEGORIES=    	databases www

MAINTAINER=	Vladimir T�mara Pati�o <vtamara@pasosdeJesus.org>

# Public Domain  & BSD License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes

PREFIX ?=       /var/www
SIVEL_RAIZ ?=	htdocs/sivel
INSTDIR ?=	${PREFIX}/${SIVEL_RAIZ}
SUBST_VARS=	INSTDIR SIVEL_RAIZ


RUN_DEPENDS= databases/postgresql


DISTFILES=      ${DISTNAME}${EXTRACT_SUFX} 
DCOMP ?= ${DISTNAME}

