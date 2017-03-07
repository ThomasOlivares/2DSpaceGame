#ifndef BOOK_PLAYER_HPP
#define BOOK_PLAYER_HPP

#include "../Headers/category.hpp"
#include "../Headers/command.hpp"
#include "../Headers/commandQueue.hpp"
#include "../Headers/aircraft.hpp"

#include <SFML/Window/Event.hpp>

#include <map>

class Player
{
	public:
		enum Action
		{
			MoveLeft,
			MoveRight,
			MoveUp,
			MoveDown,
			ActionCount
		};


	public:
								Player();

		void					handleEvent(const sf::Event& event, CommandQueue& commands);
		void					handleRealtimeInput(CommandQueue& commands);

		void					assignKey(Action action, sf::Keyboard::Key key);
		sf::Keyboard::Key		getAssignedKey(Action action) const;


	private:
		void					initializeActions();
		static bool				isRealtimeAction(Action action);


	private:
		std::map<sf::Keyboard::Key, Action>		mKeyBinding;
		std::map<Action, Command>				mActionBinding;
};

#endif // BOOK_PLAYER_HPP