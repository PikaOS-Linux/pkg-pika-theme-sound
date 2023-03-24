all:

install:
	mkdir -p $(DESTDIR)/usr/share/sounds/pika
	cp --no-preserve=mode,ownership -r \
		sounds/* \
		$(DESTDIR)/usr/share/sounds/pika/

uninstall:
	-rm -rf $(DESTDIR)/usr/share/sounds/pika
