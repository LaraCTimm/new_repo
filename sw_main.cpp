#include "StopWatch.h"
#include <iostream>

using namespace std;

int main()
{
    StopWatch timer;        // create instance of stopwatch class
    
    timer.startTimer();
    
    // loop that wastes some time to test the stopwatch
    cout << "Wasting some time... \n";
    for (int i = 0; i < 100000000; i++)
    {
        int wasteTime = 0;
    }
        
    timer.stopTimer();

    return 0;
}