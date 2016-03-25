CROSS_COMPILE = arm-linux-gnu-
CC = $(CROSS_COMPILE)gcc
CFLAGS = -g -Wall -O2
DB2MAN = docbook-to-man
RM = rm

bin_PROGRAMS = hello
man1_MANS = hello.1

all:	$(bin_PROGRAMS) $(man1_MANS)

hello:	hello.c
	$(CC) $(CFLAGS) -o $@ $<

hello.1: hello.sgml
	$(DB2MAN) $< >$@

clean:
	-$(RM) -f $(bin_PROGRAMS) $(man1_MANS)
