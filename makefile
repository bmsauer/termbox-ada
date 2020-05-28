#makefile for termbox-ada demo
SHELL=/bin/bash

all: clean build bind linkall

build: demo.adb
	gnatmake -aI./include -c demo.adb

bind:
	gnatbind demo.ali

linkall:
	gnatlink demo.ali ./termbox/lib/libtermbox.so  -Wl,-rpath=./termbox/lib/

clean:
	gnatclean demo
