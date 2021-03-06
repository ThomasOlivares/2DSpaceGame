#ifndef SPRITE_NODE
#define SPRITE_NODE

#include <SFML/Graphics.hpp>
#include <iostream>
#include "../Headers/sceneNode.hpp"

class SpriteNode : public SceneNode{
	public:
		explicit SpriteNode(const sf::Texture& texture);
		SpriteNode(const sf::Texture& texture, const sf::IntRect& rect);
	private:
		virtual void drawCurrent(sf::RenderTarget& target, sf::RenderStates states) const;
	private:
		sf::Sprite mSprite;
};

#endif //SPRITE_NODE