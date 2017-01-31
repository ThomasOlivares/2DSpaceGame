#ifndef GAME_H
#define GAME_H

#include <SFML/Graphics.hpp>
#include <iostream>
#include <stdlib.h>
#include "textureHolder.h"
#include "player.h"

#define TIME_PER_FRAME 5

class Game{
	public:
		Game();
		void run();

	private:
		void processEvents();
		void update(sf::Time deltaTime);
		void render();
		void handlePlayerInput(sf::Keyboard::Key key, bool isPressed);
		
	private:
		sf::RenderWindow mWindow;
		Aircraft player;
		sf::Sprite rocket;
		ResourceHolder<sf::Texture, Textures::ID> textures;
		sf::Time TimePerFrame;
};

#endif //GAME_H