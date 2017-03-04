FLAG=-lsfml-graphics \
	-lsfml-window \
	-lsfml-system 

CLASSES=aircraft.o \
		application.o \
		category.hpp \
		command.o \
		commandQueue.o \
		entity.o \
		gameState.o \
		loadingState.o \
		main.o \
		menuState.o \
		parallelTask.o \
		pauseState.o \
		player.o \
		resourceHolder.hpp \
		sceneNode.o \
		spriteNode.o \
		state.o \
		stateIdentifiers.hpp \
		stateStack.o \
		titleState.o \
		utility.o \
		world.o

LDFLAGS=-g

RDFLAGS=-std=c++11 -Wall -Werror

all : main

main : $(CLASSES)
	g++ $(LDFLAGS) $(CLASSES) -o SpaceShooter $(RDFLAGS) $(FLAG)

main.o : main.cpp
	g++ $(LDFLAGS) -c main.cpp $(RDFLAGS)

aircraft.o : aircraft.cpp
	g++ $(LDFLAGS) -c aircraft.cpp $(RDFLAGS)

application.o : application.cpp
	g++ $(LDFLAGS) -c application.cpp $(RDFLAGS)

command.o : command.cpp
	g++ $(LDFLAGS) -c command.cpp $(RDFLAGS)

commandQueue.o : commandQueue.cpp
	g++ $(LDFLAGS) -c commandQueue.cpp $(RDFLAGS)

entity.o : entity.cpp
	g++ $(LDFLAGS) -c entity.cpp $(RDFLAGS)

gameState.o : gameState.cpp
	g++ $(LDFLAGS) -c gameState.cpp $(RDFLAGS)

loadingState.o : loadingState.cpp
	g++ $(LDFLAGS) -c loadingState.cpp $(RDFLAGS)

menuState.o : menuState.cpp
	g++ $(LDFLAGS) -c menuState.cpp $(RDFLAGS)

parallelTask.o : parallelTask.cpp
	g++ $(LDFLAGS) -c parallelTask.cpp $(RDFLAGS)

pauseState.o : pauseState.cpp
	g++ $(LDFLAGS) -c pauseState.cpp $(RDFLAGS)

player.o : player.cpp
	g++ $(LDFLAGS) -c player.cpp $(RDFLAGS)

sceneNode.o : sceneNode.cpp
	g++ $(LDFLAGS) -c sceneNode.cpp $(RDFLAGS)

spriteNode.o : spriteNode.cpp
	g++ $(LDFLAGS) -c spriteNode.cpp $(RDFLAGS)

state.o :  state.cpp
	g++ $(LDFLAGS) -c state.cpp $(RDFLAGS)

stateStack.o :  stateStack.cpp
	g++ $(LDFLAGS) -c stateStack.cpp $(RDFLAGS)

titleState.o : titleState.cpp
	g++ $(LDFLAGS) -c titleState.cpp $(RDFLAGS)

utility.o : utility.cpp
	g++ $(LDFLAGS) -c utility.cpp $(RDFLAGS)

world.o : world.cpp
	g++ $(LDFLAGS) -c world.cpp $(RDFLAGS)

clean :
	rm *.o
	rm SpaceShooter

oclean :
	rm *.o