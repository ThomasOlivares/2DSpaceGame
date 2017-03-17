FLAG=-lsfml-graphics \
	-lsfml-window \
	-lsfml-system \
	-lsfml-audio \
	-lsfml-network

CLASSES=aircraft.o \
		animation.o \
		application.o \
		bloomEffect.o \
		button.o \
		$(HEADERS)category.hpp \
		command.o \
		commandQueue.o \
		component.o \
		container.o \
		dataTables.o \
		emitterNode.o \
		entity.o \
		gameOverState.o \
		gameState.o \
		label.o \
		loadingState.o \
		main.o \
		menuState.o \
		musicPlayer.o \
		parallelTask.o \
		$(HEADERS)particle.hpp \
		particleNode.o \
		pauseState.o \
		pickup.o \
		player.o \
		postEffect.o \
		projectile.o \
		$(HEADERS)resourceHolder.hpp \
		sceneNode.o \
		settingState.o \
		soundNode.o \
		soundPlayer.o \
		spriteNode.o \
		state.o \
		$(HEADERS)stateIdentifiers.hpp \
		stateStack.o \
		textNode.o \
		titleState.o \
		utility.o \
		world.o

LDFLAGS=-g

RDFLAGS=-std=c++11

SOURCES = Sources/

HEADERS = Headers/

all : main

main : $(CLASSES)
	g++ $(LDFLAGS) $(CLASSES) -o SpaceShooter $(RDFLAGS) $(FLAG)

main.o : $(SOURCES)main.cpp
	g++ $(LDFLAGS) -c $(SOURCES)main.cpp $(RDFLAGS)

aircraft.o : $(SOURCES)aircraft.cpp
	g++ $(LDFLAGS) -c $(SOURCES)aircraft.cpp $(RDFLAGS)

animation.o : $(SOURCES)animation.cpp
	g++ $(LDFLAGS) -c $(SOURCES)animation.cpp $(RDFLAGS)

application.o : $(SOURCES)application.cpp
	g++ $(LDFLAGS) -c $(SOURCES)application.cpp $(RDFLAGS)

bloomEffect.o : $(SOURCES)bloomEffect.cpp
	g++ $(LDFLAGS) -c $(SOURCES)bloomEffect.cpp $(RDFLAGS)

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

dataTables.o : $(SOURCES)dataTables.cpp
	g++ $(LDFLAGS) -c $(SOURCES)dataTables.cpp $(RDFLAGS)

emitterNode.o : $(SOURCES)emitterNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)emitterNode.cpp $(RDFLAGS)

entity.o : $(SOURCES)entity.cpp
	g++ $(LDFLAGS) -c $(SOURCES)entity.cpp $(RDFLAGS)

gameOverState.o : $(SOURCES)gameOverState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)gameOverState.cpp $(RDFLAGS)

gameState.o : $(SOURCES)gameState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)gameState.cpp $(RDFLAGS)

label.o : $(SOURCES)label.cpp
	g++ $(LDFLAGS) -c $(SOURCES)label.cpp $(RDFLAGS)

loadingState.o : $(SOURCES)loadingState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)loadingState.cpp $(RDFLAGS)

menuState.o : $(SOURCES)menuState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)menuState.cpp $(RDFLAGS)

musicPlayer.o : $(SOURCES)musicPlayer.cpp
	g++ $(LDFLAGS) -c $(SOURCES)musicPlayer.cpp $(RDFLAGS)

parallelTask.o : $(SOURCES)parallelTask.cpp
	g++ $(LDFLAGS) -c $(SOURCES)parallelTask.cpp $(RDFLAGS)

particleNode.o : $(SOURCES)particleNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)particleNode.cpp $(RDFLAGS)

pauseState.o : $(SOURCES)pauseState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)pauseState.cpp $(RDFLAGS)

pickup.o : $(SOURCES)pickup.cpp
	g++ $(LDFLAGS) -c $(SOURCES)pickup.cpp $(RDFLAGS)

player.o : $(SOURCES)player.cpp
	g++ $(LDFLAGS) -c $(SOURCES)player.cpp $(RDFLAGS)

postEffect.o : $(SOURCES)postEffect.cpp
	g++ $(LDFLAGS) -c $(SOURCES)postEffect.cpp $(RDFLAGS)

projectile.o : $(SOURCES)projectile.cpp
	g++ $(LDFLAGS) -c $(SOURCES)projectile.cpp $(RDFLAGS)

sceneNode.o : $(SOURCES)sceneNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)sceneNode.cpp $(RDFLAGS)

settingState.o : $(SOURCES)settingState.cpp
	g++ $(LDFLAGS) -c $(SOURCES)settingState.cpp $(RDFLAGS)

soundNode.o : $(SOURCES)soundNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)soundNode.cpp $(RDFLAGS)

soundPlayer.o : $(SOURCES)soundPlayer.cpp
	g++ $(LDFLAGS) -c $(SOURCES)soundPlayer.cpp $(RDFLAGS)

spriteNode.o : $(SOURCES)spriteNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)spriteNode.cpp $(RDFLAGS)

state.o :  $(SOURCES)state.cpp
	g++ $(LDFLAGS) -c $(SOURCES)state.cpp $(RDFLAGS)

stateStack.o :  $(SOURCES)stateStack.cpp
	g++ $(LDFLAGS) -c $(SOURCES)stateStack.cpp $(RDFLAGS)

textNode.o :  $(SOURCES)textNode.cpp
	g++ $(LDFLAGS) -c $(SOURCES)textNode.cpp $(RDFLAGS)

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