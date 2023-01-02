MACHINE:=$(shell gcc -dumpmachine)
IS_X86_64:=$(if $(findstring x86_64,$(MACHINE)),true,false)

.PHONY: all clean

all: onkyo-dec

onkyo-dec:
ifeq ($(IS_X86_64),true)
	gcc -o onkyo-dec -m32 onkyo-decrypt.c
else
	gcc -o onkyo-dec onkyo-decrypt.c
endif

clean:
	rm -f onkyo-dec
