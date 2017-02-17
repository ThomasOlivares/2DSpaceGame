#include <SFML/Graphics.hpp>
#include <iostream>
#include "spriteNode.hpp"
#include "sceneNode.hpp"
#include "textureHolder.h"
#include "player.hpp"

class World : private sf::NonCopyable{
	public:
		explicit World(sf::RenderWindow& window);
		void update(sf::Time dt);
		void draw();
		void setPlayerSpeed(sf::Vector2f movement);

	private:
		void loadTextures();
		void buildScene();

	private:
		enum Layer{
			Background,
			Air,
			LayerCount
		};

	private:
		sf::RenderWindow& mWindow;
		sf::View mWorldView;
		TextureHolder mTextures;
		SceneNode mSceneGraph;
		std::array<SceneNode*, LayerCount> mSceneLayers;
		sf::FloatRect mWorldBounds;
		sf::Vector2f mSpawnPosition;
		float mScrollSpeed;
		Aircraft* mPlayerAircraft;
};