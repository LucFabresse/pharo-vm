#
.travis.yml
...


charge la derniere VMMaker dans la derniere squeak
./scripts/buildspurtrunkvmmakerimage.sh




# build.macos32x86

## added pharo.stack.spur.min

a stack+spur pharo VM with least minimum plugins to still open a [Pharo 7 32bits  image](http://files.pharo.org/image/70/Pharo-7.0.0-alpha.build.373.sha.1ff4f8a.arch.32bit.zip).

	EXTERNAL_PLUGINS = # no one ;-)
	
	INTERNAL_PLUGINS = \
	BitBltPlugin \
	B2DPlugin \
	SqueakFFIPrims \
	FilePlugin \
	HostWindowPlugin \
	SocketPlugin \	# required by Pharo 7 image startUp list :-)	but it should not be that hard to cut it off
	SoundPlugin		# required by sqSqueakOSXApplication.m ... but it should not be that hard to cut it off


	du -sh StackSpur32.app
	1.7M	StackSpur32.app
	
	tree StackSpur32.app/Contents/MacOS
	| |____MacOS
	| | |____Pharo
	| | |____Plugins
	| | | |____libB3DAcceleratorPlugin.dylib  # why is it there???
	
# build.macos64x64

## pharo.stack.spur


	du -sh StackSpur64Pharo.app
	8.8M	StackSpur64Pharo.app
	

## added pharo.stack.spur.min
 
a stack+spur pharo VM with the least minimum plugins to still open a [Pharo 7 64bits image](http://files.pharo.org/image/70/Pharo-7.0.0-alpha.build.373.sha.1ff4f8a.arch.64bit.zip).
 	
	
	du -sh MinimalOsXStackSpur64.app
	1.6M	MinimalOsXStackSpur64.app


# build.linux64x64

## Perequisites

	apt install gcc-4.8

	apt install mesa-common-dev libglu1-mesa-dev freeglut3-dev libfreetype6-dev libssl-dev libuuid1

## pharo.cog.spur
	
	cd opensmalltalk-vm/build.linux64x64/pharo.cog.spur/build/
	./mvm 

<!-- ERROR because (not sur this error is still there...)

template ../../../platforms/unix/config/make.cfg.in
contains FREETYPE2_CFLAGS= @FREETYPE2_CFLAGS@
not replaced by ../../../platforms/unix/config/configure
contrary to other variables such as LIBM_CFLAGS

silly fix =>
directly set the value in ../../../platforms/unix/config/make.cfg.in
FREETYPE2_CFLAGS=`pkg-config --cflags freetype2`
FREETYPE2_LIBS=`pkg-config --libs freetype2`

	git diff make.cfg.in
	-FREETYPE2_CFLAGS= @FREETYPE2_CFLAGS@
	-FREETYPE2_LIBS= @FREETYPE2_LIBS@
	+FREETYPE2_CFLAGS= -I/usr/include/freetype2
	+FREETYPE2_LIBS= -lfreetype

	-PYLIBPATH=     @PYLIBPATH@
	-PYINCLUDES=    @PYINCLUDES@
	+# PYLIBPATH=   @PYLIBPATH@
	+# PYINCLUDES=  @PYINCLUDES@ -->


# build.linux32x86

## Perequisites
	
assuming we are cross compiling from an x64, we need to install:
	
	apt install gcc-4.8-multilib "libx11-6:i386" "libgl1-mesa-glx:i386" "libfontconfig1:i386" "libssl1.0.0:i386" uuid-dev:i386 libuuid1:i386 libx11-dev:i386 libgl1-mesa-dev:i386  

## added pharo.stack.spur
	
	
	cd pharo.stack.spur/build
	./mvm
	# result in ../../../products/

# build.linux32ARMv6

https://www.acmesystems.it/arm9_toolchain
	
	sudo apt install arm-linux-gnueabihf-gcc


