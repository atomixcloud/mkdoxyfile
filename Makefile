
# GNU Makefile for mkDoxyfile

PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin

TARGET := mkdoxyfile
SRCS   := $(TARGET).sh

all: sanity

sanity:
	bash -n $(SRCS)

install:
	install -D $(SRCS) $(DESTDIR)$(BINDIR)/$(TARGET)

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(TARGET)

clean:
	@#Nothing to be done

.PHONY: all target clean install uninstall

