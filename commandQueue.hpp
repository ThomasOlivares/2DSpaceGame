#ifndef COMMAND_QUEUE
#define COMMAND_QUEUE

#include "command.hpp"
#include "sceneNode.hpp"
#include <queue>

class CommandQueue{
	public:
		void push(const Command& command);
		Command pop();
		bool isEmpty() const;

	private:
		std::queue<Command> mQueue;
};

#endif //COMMAND_QUEUE