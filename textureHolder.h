#ifndef TEXTURE_HOLDER_H
#define TEXTURE_HOLDER_H

#include <SFML/Graphics.hpp>
#include <map>
#include <iostream>
#include <memory>
#include <utility>

namespace Textures{
	enum class ID { Player, Missile, Ennemi };
}

class TextureHolder{
	public:
		TextureHolder();
		void load(Textures::ID id, const std::string& filename);
		void loadAll();
		const sf::Texture& get(Textures::ID id) const;

	private:
		std::map<Textures::ID,
			std::unique_ptr<sf::Texture>> mTextureMap;
};

#endif //TEXTURE_HOLDER_H
