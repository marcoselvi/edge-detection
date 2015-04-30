
FLAGS = -g -o
GRAPHICS = -I.. -Wall -W -ansi -pedantic -Dcimg_use_vt100 -I/usr/X11R6/include -lm -L/usr/X11R6/lib -lpthread -lX11
LINKING = -lboost_system
#-lncurses


## 'edges' executable and compilation
edges.run: edges
	@echo "\n\n** Running executable edges **\n"
	sudo ./edges.x

edges: edges.cpp
	@echo "\n\n** Compiling edges.cpp in linux X11 environment **\n"
	g++ $(FLAGS) edges.x edges.cpp $(GRAPHICS) $(LINKING)

greyfy:
	@echo "\n\n** Compiling greyfy.cpp in linux X11 environment **\n"
	g++ $(FLAGS) greyfy.x greyfy.cpp $(GRAPHICS) $(LINKING)
	./greyfy.x
