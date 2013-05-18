# Use the command-line to override the options used here.

INIT_FILES = ${wildcard init.d/*}
CONF_FILES = ${wildcard conf.d/*}

DESTDIR = /usr/local
SYSCONFDIR = etc/openrc

INITDIR = ${DESTDIR}/${SYSCONFDIR}/init.d
CONFDIR = ${DESTDIR}/${SYSCONFDIR}/conf.d

install:
	install -d "${INITDIR}" "${CONFDIR}"
	install -m 755 -t "${INITDIR}" ${INIT_FILES}
	install -m 644 -t "${CONFDIR}" ${CONF_FILES}
