FLAG=-lsfml-graphics \
	-lsfml-window \
	-lsfml-system 

CLASSES=game.o \
		entite.o \
		player.o \
		textureHolder.o

LDFLAGS=-g

RDFLAGS=-std=c++11

all : main

main : $(CLASSES)
	g++ $(LDFLAGS) $(CLASSES) -o SpaceShooter $(RDFLAGS) $(FLAG)

entite.o : entite.cpp
	g++ $(LDFLAGS) -c entite.cpp $(RDFLAGS)

game.o : game.cpp
	g++ $(LDFLAGS) -c game.cpp $(RDFLAGS)

player.o : player.cpp
	g++ $(LDFLAGS) -c player.cpp $(RDFLAGS)

textureHolder.o : textureHolder.cpp
	g++ $(LDFLAGS) -c textureHolder.cpp $(RDFLAGS)

clean :
	rm *.o
	rm SpaceShooter