#include <SFML/Graphics.hpp>
#include <iostream>
#include "spriteNode.hpp"
#include "sceneNode.hpp"
#include "resourceHolder.hpp"
#include "aircraft.hpp"
#include "commandQueue.hpp"

class World : private sf::NonCopyable{
	public:
		explicit World(sf::RenderWindow& window);
		void update(sf::Time dt);
		void draw();
		CommandQueue& getCommandQueue();
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
		sf::RenderWindow& 					mWindow;
		sf::View 							mWorldView;
		TextureHolder 						mTextures;
		SceneNode 							mSceneGraph;
		std::array<SceneNode*, LayerCount> 	mSceneLayers;
		CommandQueue 						mCommandQueue;
		sf::FloatRect 						mWorldBounds;
		sf::Vector2f 						mSpawnPosition;
		float 								mScrollSpeed;
		Aircraft* 							mPlayerAircraft;		
};