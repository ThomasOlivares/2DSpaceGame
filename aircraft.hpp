#ifndef PLAYER_H
#define PLAYER_H

#include "entity.h"
#include "resourceHolder.hpp"

#include <SFML/Graphics/RenderTarget.hpp>
#include <SFML/Graphics/RenderStates.hpp>

class Aircraft : public Entity{
	public:
		enum Type{
			Eagle,
			Raptor
		};

	public:
		Aircraft(Type type, const TextureHolder& textures);
		virtual void drawCurrent(sf::RenderTarget& target, sf::RenderStates states) const;
		virtual unsigned int getCategory() const;
		
	private:
		Type mType;
		sf::Sprite mSprite;
};

Textures::ID toTextureID(Aircraft::Type type);

#endif //PLAYER_H
