#include "textureHolder.h"

using namespace std;

TextureHolder::TextureHolder() : mTextureMap(){
}

void TextureHolder::loadAll(){
	load(Textures::ID::Player, "Textures/player.jpeg");
}

void TextureHolder::load(Textures::ID id, const std::string& filename){
	std::unique_ptr<sf::Texture> texture(new sf::Texture());
	if(!texture->loadFromFile(filename)){
		throw std::runtime_error("TextureHolder::load - Failed to load " + filename);
	}
	mTextureMap.insert(std::make_pair(id, std::move(texture)));
}

const sf::Texture& TextureHolder::get(Textures::ID id) const{
	auto found = mTextureMap.find(id);
	return *found->second;
}