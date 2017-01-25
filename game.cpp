#include "game.h"

using namespace std;

Game::Game(): mWindow(sf::VideoMode(640, 480), "Space shooter"), rocket(){
	TimePerFrame = sf::milliseconds(TIME_PER_FRAME);

	TextureHolder textures;
	textures.loadAll();

	rocket.setTexture(textures.get(Textures::ID::Player));
	rocket.setPosition(100.f, 100.f);
}

void Game::processEvents(){
	sf::Event event;
	while (mWindow.pollEvent(event)){
		switch (event.type){
			case sf::Event::KeyPressed:
				handlePlayerInput(event.key.code, true);
				break;
			case sf::Event::KeyReleased:
				handlePlayerInput(event.key.code, false);
				break;
			case sf::Event::Closed:
				mWindow.close();
				break;
		}
	}
}

void Game::update(sf::Time deltaTime){

}

void Game::handlePlayerInput(sf::Keyboard::Key key, bool isPressed){

}

void Game::render(){
	mWindow.clear();
	mWindow.draw(rocket);
	mWindow.display();
}

void Game::run(){
	sf::Clock clock;
	sf::Time timeSinceLastUpdate = sf::Time::Zero;
	while (mWindow.isOpen()){
		processEvents();
		timeSinceLastUpdate += clock.restart();
		while (timeSinceLastUpdate > TimePerFrame){
			timeSinceLastUpdate -= TimePerFrame;
			processEvents();
			update(TimePerFrame);
		}
	render();
	}
}

int main(){
	Game game;
	game.run();
}
