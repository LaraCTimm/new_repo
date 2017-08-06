#ifndef STOPWATCH_H
#define STOPWATCH_H

class StopWatch {
public:

    // declare public functions to be used
    double getProcessTime();    // Returns the amount of time in seconds that has passed 
                                // since the process (i.e. your program) started executing 
    void startTimer();
    void stopTimer();
    StopWatch();        // constructor
    
private:

    double _startTime;
    double _stopTime;
};

#endif
