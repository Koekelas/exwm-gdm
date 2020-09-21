prefix := /usr/local
exec_prefix := $(prefix)
bindir := $(exec_prefix)/bin
datarootdir := $(prefix)/share
sysconfdir := $(prefix)/etc

.PHONY: install uninstall
install:
	install -t $(bindir) -D -m 755 exwm
	install -t $(sysconfdir)/exwm -D -m 644 exwmrc
	install -t $(datarootdir)/xsessions -D -m 644 exwm.desktop

uninstall:
	-rm $(bindir)/exwm
	-rm -r $(sysconfdir)/exwm
	-rm $(datarootdir)/xsessions/exwm.desktop
