CFLAGS+=-Wall -Wextra -O2
ADDITIONAL_CFLAGS!=pkg-config --cflags --libs gtk+-3.0

PACKAGE=rename
PROG=main.c

all:
	$(CC) $(CFLAGS) $(ADDITIONAL_CFLAGS) -o $(PACKAGE) $(PROG)

install: 
	install -D -s -m 755 $(PACKAGE) /usr/bin/$(PACKAGE)

clean:
	rm -f /usr/bin/$(PACKAGE)

.PHONY: all install clean pinkycurses
