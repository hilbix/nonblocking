# This Works is placed under the terms of the Copyright Less License,
# see file COPYRIGHT.CLL.  USE AT OWN RISK, ABSOLUTELY NO WARRANTY.

CFLAGS=-Wall -O3

PROG=nonblocking

.PHONY: all
all:	$(PROG)

.PHONY: install
install:
	cp $(PROG) "$(HOME)/bin/"

.PHONY: clean distclean
clean distclean:
	rm -f *.o *~ $(PROG)

