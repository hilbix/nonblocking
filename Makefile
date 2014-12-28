# This Works is placed under the terms of the Copyright Less License,
# see file COPYRIGHT.CLL.  USE AT OWN RISK, ABSOLUTELY NO WARRANTY.

CFLAGS=-Wall -O3

all:	nonblocking

install:
	cp nonblocking "$(HOME)/bin/"

