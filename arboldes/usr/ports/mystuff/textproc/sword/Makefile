# $OpenBSD$

COMMENT=	"Bible study platform with KJV module"

V=              1.7.4
DISTNAME=	sword-${V}
PKGNAME=        sword-${V}
REVISION=	0
# KJV cambio, detectado 2016-07-18
CATEGORIES=    	textproc books
SHARED_LIBS=	sword 7.4 
#\
#		sword 7.3 

HOMEPAGE=	http://crosswire.org/sword/software/swordapi.jsp
MAINTAINER=	Vladimir T�mara Pati�o <vtamara@pasosdeJesus.org>

# sword: GPL  kjv: free for any purpose
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS= archivers/unzip 
#LIB_DEPENDS= net/curl

MASTER_SITES=	http://crosswire.org/ftpmirror/pub/sword/source/v1.7/
MASTER_SITES0=	http://crosswire.org/ftpmirror/pub/sword/packages/rawzip/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} 
DISTFILES+=	KJV.zip:0
CONFIGURE_STYLE=	gnu 

WANTLIB=	c m

USE_GMAKE=yes
SHARE_DIR=       ${PREFIX}/share/sword

#WRKDIST=	${WRKDIR}
#WRKSRC=		${WRKDIR}/${PKGNAME}
post-install:
	${INSTALL_DATA_DIR} ${SHARE_DIR}/mods.d/
	${INSTALL_DATA_DIR} ${SHARE_DIR}/modules/texts/ztext/kjv/
	${INSTALL_DATA} ${WRKDIR}/mods.d/* ${SHARE_DIR}/mods.d
	${INSTALL_DATA} ${WRKDIR}/modules/texts/ztext/kjv/* ${SHARE_DIR}/modules/texts/ztext/kjv/
	mv ${WRKINST}/etc/sword.conf ${SHARE_DIR}/

REGRESS_TARGET=check

.include <bsd.port.mk>
