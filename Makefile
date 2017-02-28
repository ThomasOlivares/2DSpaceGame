FLAG=-lsfml-graphics \
	-lsfml-window \
	-lsfml-system 

CLASSES=aircraft.o \
		category.hpp \
		command.o \
		commandQueue.o \
		game.o \
		entity.o \
		player.o \
		sceneNode.o \
		spriteNode.o \
		textureHolder.h \
		world.o

LDFLAGS=-g

RDFLAGS=-std=c++11 -Wall -Werror

all : main

main : $(CLASSES)
	g++ $(LDFLAGS) $(CLASSES) -o SpaceShooter $(RDFLAGS) $(FLAG)

aircraft.o : aircraft.cpp
	g++ $(LDFLAGS) -c aircraft.cpp $(RDFLAGS)

command.o : command.cpp
	g++ $(LDFLAGS) -c command.cpp $(RDFLAGS)

commandQueue.o : commandQueue.cpp
	g++ $(LDFLAGS) -c commandQueue.cpp $(RDFLAGS)

entity.o : entity.cpp
	g++ $(LDFLAGS) -c entity.cpp $(RDFLAGS)

game.o : game.cpp
	g++ $(LDFLAGS) -c game.cpp $(RDFLAGS)

player.o : player.cpp
	g++ $(LDFLAGS) -c player.cpp $(RDFLAGS)

sceneNode.o : sceneNode.cpp
	g++ $(LDFLAGS) -c sceneNode.cpp $(RDFLAGS)

spriteNode.o : spriteNode.cpp
	g++ $(LDFLAGS) -c spriteNode.cpp $(RDFLAGS)

world.o : world.cpp
	g++ $(LDFLAGS) -c world.cpp $(RDFLAGS)


clean :
	rm *.o
	rm SpaceShooter