#include "../Headers/sceneNode.hpp"

using namespace std;

SceneNode::SceneNode() : mChildren(), mParent(nullptr){
	
}

void SceneNode::attachChild(Ptr child){
	child->mParent = this;
	mChildren.push_back(std::move(child));
}

SceneNode::Ptr SceneNode::detachChild(const SceneNode& node){
	auto found = std::find_if(mChildren.begin(), mChildren.end(),
		[&] (Ptr& p) { return p.get() == &node; });
	assert(found != mChildren.end());
	Ptr result = std::move(*found);
	result->mParent = nullptr;
	mChildren.erase(found);
	return result;
}
void SceneNode::draw(sf::RenderTarget& target, sf::RenderStates states) const{
	// Apply transform of current node
	states.transform *= getTransform();

	// Draw node and children with changed transform
	drawCurrent(target, states);
	drawChildren(target, states);
}

void SceneNode::drawChildren(sf::RenderTarget& target, sf::RenderStates states) const{
	for (auto i = mChildren.begin(); i != mChildren.end(); ++i){
		(*i)->draw(target, states);
	}
}

void SceneNode::drawCurrent(sf::RenderTarget& target, sf::RenderStates states) const{
}

void SceneNode::update(sf::Time dt){
	updateCurrent(dt);
	updateChildren(dt);
}

void SceneNode::updateCurrent(sf::Time){
}

void SceneNode::updateChildren(sf::Time dt){
	for (auto i = mChildren.begin(); i != mChildren.end(); i++){
		(*i)->update(dt);
	}
}

void SceneNode::onCommand(const Command& command, sf::Time dt){
	if (command.category & getCategory()){
		command.action(*this, dt);
	}
	for (auto i = mChildren.begin(); i != mChildren.end(); i++){
		(*i)->onCommand(command, dt);
	}
}

sf::Transform SceneNode::getWorldTransform() const{
	sf::Transform transform = sf::Transform::Identity;

	for (const SceneNode* node = this; node != nullptr; node = node->mParent)
		transform = node->getTransform() * transform;

	return transform;
}

sf::Vector2f SceneNode::getWorldPosition() const{
	return getWorldTransform() * sf::Vector2f();
}

int SceneNode::getNumberChildren() const{
	return mChildren.size();
}

unsigned int SceneNode::getCategory() const{
	return Category::Scene;
}

