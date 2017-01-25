#include "entite.h"

Entite::Entite(int posX, int posY) : position(sf::Vector2i(posX, posY)){

}

void Entite::moveRight(int distance){
	position+=sf::Vector2i(distance, 0);
}

void Entite::moveLeft(int distance){
	position-=sf::Vector2i(distance, 0);
}

void Entite::moveTop(int distance){
	position-=sf::Vector2i(0, distance);
}

void Entite::moveBottom(int distance){
	position+=sf::Vector2i(0, distance);
}