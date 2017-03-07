#ifndef SETTINGSSTATE_HPP
#define SETTINGSSTATE_HPP

#include "../Headers/state.hpp"
#include "../Headers/player.hpp"
#include "../Headers/container.hpp"
#include "../Headers/button.hpp"
#include "../Headers/label.hpp"

#include <SFML/Graphics/Sprite.hpp>
#include <SFML/Graphics/Text.hpp>

#include <array>


class SettingsState : public State
{
	public:
										SettingsState(StateStack& stack, Context context);

		virtual void					draw();
		virtual bool					update(sf::Time dt);
		virtual bool					handleEvent(const sf::Event& event);


	private:
		void							updateLabels();
		void							addButtonLabel(Player::Action action, float y, const std::string& text, Context context);


	private:
		sf::Sprite											mBackgroundSprite;
		GUI::Container										mGUIContainer;
		std::array<GUI::Button::Ptr, Player::ActionCount>	mBindingButtons;
		std::array<GUI::Label::Ptr, Player::ActionCount> 	mBindingLabels;
};

#endif // SETTINGSSTATE_HPP