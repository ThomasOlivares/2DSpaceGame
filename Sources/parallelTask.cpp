#include "../Headers/parallelTask.hpp"

const float loadingTime = 2.f;

ParallelTask::ParallelTask()
: mThread(&ParallelTask::runTask, this)
, mFinished(false)
{
}

void ParallelTask::execute()
{
	mFinished = false;
	mElapsedTime.restart();
	mThread.launch();
}

bool ParallelTask::isFinished()
{
	sf::Lock lock(mMutex);
	return mFinished;
}

float ParallelTask::getCompletion()
{
	sf::Lock lock(mMutex);

	// 100% at loadingTime seconds of elapsed time
	return mElapsedTime.getElapsedTime().asSeconds() / loadingTime;
}

void ParallelTask::runTask()
{
	// Dummy task - stall loadingTime seconds
	bool ended = false;
	while (!ended)
	{
		sf::Lock lock(mMutex); // Protect the clock 
		if (mElapsedTime.getElapsedTime().asSeconds() >= loadingTime)
			ended = true;
	}

	{ // mFinished may be accessed from multiple threads, protect it
		sf::Lock lock(mMutex);
		mFinished = true;
	}	
}