FLAG=-lsfml-graphics \
	-lsfml-window \
	-lsfml-system 

CLASSES=game.o \
		entity.o \
		player.o \
		textureHolder.h \
		sceneNode.o \
		spriteNode.o \
		world.o

LDFLAGS=-g

RDFLAGS=-std=c++11

all : main

main : $(CLASSES)
	g++ $(LDFLAGS) $(CLASSES) -o SpaceShooter $(RDFLAGS) $(FLAG)

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