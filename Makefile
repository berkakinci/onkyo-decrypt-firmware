MACHINE:=$(shell gcc -dumpmachine)
IS_X86_64:=$(if $(findstring x86_64,$(MACHINE)),true,false)

all:
ifeq ($(IS_X86_64),true)
	gcc -o onkyo-dec -m32 onkyo-decrypt.c
else
	gcc -o onkyo-dec onkyo-decrypt.c
endif
