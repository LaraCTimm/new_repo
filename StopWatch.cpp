#include "StopWatch.h"
#include <ctime>
#include <iostream>
using namespace std;

// definition of constructor, no member initialisation necessary
StopWatch::StopWatch()
{
}

// returns the amount of time in seconds that has passed since the process (i.e. your program) started executing 
double StopWatch::getProcessTime()
{
	clock_t time = clock();
	return static_cast<double>(time)/CLOCKS_PER_SEC;
}

// starts the timer by getting the current process time
void StopWatch::startTimer()
{
    _startTime = getProcessTime();
    return;
}

// stops the timer by subtracting the current process time from the previous process time, outputs the process time
void StopWatch::stopTimer()
{
    _stopTime = getProcessTime();
    double duration = _stopTime-_startTime;
    cout << "Elapsed time: " << duration << " seconds \n";
    return;
}


