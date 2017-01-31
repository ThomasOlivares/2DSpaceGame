#ifndef PLAYER_H
#define PLAYER_H

#include "entity.h"
#include "textureHolder.h"

class Aircraft : public Entity{
	public:
		enum Type{Eagle,Raptor,};

	public:
		Aircraft(Type type, const TextureHolder& textures);
		void drawCurrent(sf::RenderTarget& target, sf::RenderStates states) const;
		explicit Aircraft(Type type);
		
	private:
		Type mType;
		sf::Sprite mSprite;
};

Textures::ID toTextureID(Aircraft::Type type);

#endif //PLAYER_H
