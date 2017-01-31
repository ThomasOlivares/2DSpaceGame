#ifndef TEXTURE_HOLDER_H
#define TEXTURE_HOLDER_H

#include <SFML/Graphics.hpp>
#include <map>
#include <iostream>
#include <memory>
#include <utility>
#include <assert.h>

namespace Textures{
	enum ID{
		Eagle,
		Raptor,
	};
}

template <typename Resource, typename Identifier>
class ResourceHolder{
	public:
		ResourceHolder();
		void load(Identifier id, const std::string& filename);
		template <typename Parameter>
		void load(Identifier id, const std::string& filename, 
			const Parameter& secondParam);
		const Resource& get(Identifier id) const;

	private:
		std::map<Identifier, std::unique_ptr<Resource>> mTextureMap;
};

typedef ResourceHolder<sf::Texture, Textures::ID> TextureHolder;

#include "textureHolder.tpp"

#endif //TEXTURE_HOLDER_H
