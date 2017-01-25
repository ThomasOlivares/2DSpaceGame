#ifndef ENTITE_H
#define ENTITE_H

#include <SFML/Graphics.hpp>

class Entite{
	public:
		Entite(int posX, int posY);
		void moveRight(int distance);
		void moveLeft(int distance);
		void moveTop(int distance);
		void moveBottom(int distance);

	protected:
		sf::Vector2i position;

};

#endif //ENTITE_H