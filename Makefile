PREFIX ?= /usr

install:
	@install -Dm755 pw $(DESTDIR)$(PREFIX)/bin/pw

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/pw
