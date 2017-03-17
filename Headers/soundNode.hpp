#ifndef SOUNDNODE_HPP
#define SOUNDNODE_HPP

#include "../Headers/sceneNode.hpp"
#include "../Headers/resourceIdentifiers.hpp"


class SoundPlayer;

class SoundNode : public SceneNode
{
	public:
		explicit				SoundNode(SoundPlayer& player);
		void					playSound(SoundEffect::ID sound, sf::Vector2f position);

		virtual unsigned int	getCategory() const;


	private:
		SoundPlayer&			mSounds;
};

#endif // SOUNDNODE_HPP
