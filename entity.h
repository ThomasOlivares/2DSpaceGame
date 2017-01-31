#ifndef ENTITY_H
#define ENTITY_H

#include <SFML/Graphics.hpp>

class Entity : public sf::Transformable{
	public:
		Entity();
		void setVelocity(sf::Vector2f velocity);
		void setVelocity(float vx, float vy);
		sf::Vector2f getVelocity() const;

	protected:
		virtual void updateCurrent(sf::Time dt);

	protected:
		sf::Vector2f position;
		int horizontal;
		int vertical;
		sf::Vector2f mVelocity;


};

#endif //ENTITY_H
