#ifndef SCENE_NODE
#define SCENE_NODE

#include <SFML/Graphics.hpp>
#include <assert.h>
#include <iostream>
#include <string>
#include <vector>

enum Layer{
	Background,
	Air,
	LayerCount
};

class SceneNode : public sf::Transformable, public sf::Drawable,
				  private sf::NonCopyable
{
	public:
		typedef std::unique_ptr<SceneNode> Ptr;

	public:
		SceneNode();
		void attachChild(Ptr child);
		Ptr detachChild(const SceneNode& node);
		void update(sf::Time dt);

	private:
		virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const;
		virtual void drawCurrent(sf::RenderTarget& target, sf::RenderStates states) const;
		virtual void updateCurrent(sf::Time dt);
		void updateChildren(sf::Time dt);
		std::vector<Ptr> mChildren;
		SceneNode* mParent;
};

#endif //SCENE_NODE
