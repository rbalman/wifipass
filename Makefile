PKG_NAME = wipass
SOURCES = main.sh
SUPPORT = .version Readme.org


default:
	@echo "Hint: use make install"


install: unlink uninstall
	mkdir -p /opt/${PKG_NAME}
	install -m 755 ${SOURCES} -t /opt/${PKG_NAME}/
	cp ${SUPPORT} /opt/${PKG_NAME}/
	ln -s /opt/${PKG_NAME}/main.sh /usr/local/bin/${PKG_NAME}


uninstall: unlink
	rm -rf /opt/${PKG_NAME}

unlink:
	rm -f /usr/local/bin/${PKG_NAME}
