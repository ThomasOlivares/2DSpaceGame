FLAG=-lsfml-graphics \
	-lsfml-window \
	-lsfml-system 

CLASSES=aircraft.o \
		application.o \
		button.o \
		$(HEADERS)category.hpp \
		command.o \
		commandQueue.o \
		component.o \
		container.o \
		entity.o \
		gameState.o \
		label.o \
		loadingState.o \
		main.o \
		menuState.o \
		parallelTask.o \
		pauseState.o \
		player.o \
		$(HEADERS)resourceHolder.hpp \
		sceneNode.o \
		settingState.o \
		spriteNode.o \
		state.o \
		$(HEADERS)stateIdentifiers.hpp \
		stateStack.o \
		titleState.o \
		utility.o \
		world.o

LDFLAGS=-g

RDFLAGS=-std=c++11 -Wall -Werror

SOURCES = Sources/

HEADERS = Headers/

all : main

main : $(CLASSES)
	g++ $(LDFLAGS) $(CLASSES) -o SpaceShooter $(RDFLAGS) $(FLAG)

main.o : $(SOURCES)main.cpp
	g++ $(LDFLAGS) -c $(SOURCES)main.cpp $(RDFLAGS)

aircraft.o : $(SOURCES)aircraft.cpp
	g++ $(LDFLAGS) -c $(SOURCES)aircraft.cpp $(RDFLAGS)

application.o : $(SOURCES)application.cpp
	g++ $(LDFLAGS) -c $(SOURCES)application.cpp $(RDFLAGS)

button.o : $(SOURCES)button.cpp
	g++ $(LDFLAGS) -c $(SOURCES)button.cpp $(RDFLAGS)

command.o : $(SOURCES)command.cpp
	g++ $(LDFLAGS) -c $(SOURCES)command.cpp $(RDFLAGS)

commandQueue.o : $(SOURCES)commandQueue.cpp
	g++ $(LDFLAGS) -c $(SOURCES)commandQueue.cpp $(RDFLAGS)

component.o : $(SOURCES)component.cpp
	g++ $(LDFLAGS) -c $(SOURCES)component.cpp $(RDFLAGS)

container.o : $(SOURCES)container.cpp
	g++ $(LDFLAGS) -c $(SOURCES)container.cpp $(RDFLAGS)

entity.o : $(SOURCES)entity.cpp
	g++ $(LDFLAGS) -c $(SOURCES)entity.cpp $(RDFLAGS)

gameState.o : $(SOURCES)gameState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)gameState.cpp $(RDFLAGS)

label.o : $(SOURCES)label.cpp
	g++ $(LDFLAGS) -c $(SOURCES)label.cpp $(RDFLAGS)

loadingState.o : $(SOURCES)loadingState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)loadingState.cpp $(RDFLAGS)

menuState.o : $(SOURCES)menuState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)menuState.cpp $(RDFLAGS)

parallelTask.o : $(SOURCES)parallelTask.cpp
	g++ $(LDFLAGS) -c $(SOURCES)parallelTask.cpp $(RDFLAGS)

pauseState.o : $(SOURCES)pauseState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)pauseState.cpp $(RDFLAGS)

player.o : $(SOURCES)player.cpp
	g++ $(LDFLAGS) -c $(SOURCES)player.cpp $(RDFLAGS)

sceneNode.o : $(SOURCES)sceneNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)sceneNode.cpp $(RDFLAGS)

settingState.o : $(SOURCES)settingState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)settingState.cpp $(RDFLAGS)

spriteNode.o : $(SOURCES)spriteNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)spriteNode.cpp $(RDFLAGS)

state.o :  $(SOURCES)state.cpp
	g++ $(LDFLAGS) -c $(SOURCES)state.cpp $(RDFLAGS)

stateStack.o :  $(SOURCES)stateStack.cpp
	g++ $(LDFLAGS) -c $(SOURCES)stateStack.cpp $(RDFLAGS)

titleState.o : $(SOURCES)titleState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)titleState.cpp $(RDFLAGS)

utility.o : $(SOURCES)utility.cpp
	g++ $(LDFLAGS) -c $(SOURCES)utility.cpp $(RDFLAGS)

world.o : $(SOURCES)world.cpp
	g++ $(LDFLAGS) -c $(SOURCES)world.cpp $(RDFLAGS)

clean :
	rm *.o
	rm SpaceShooter

oclean :
	rm *.o