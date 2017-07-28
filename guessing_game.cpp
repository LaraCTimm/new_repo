// Lara Timm 704157
// ELEN3009 Lab1
// 28/07/2017

#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>
using namespace std;

int main()
{
    
    int numSecret, numGuessed;
    bool isGuessed = false;
    int guessCount = 0;
    
    srand (time(NULL));
    numSecret = rand() % 100 + 1;
    
    cout << "Welcome to the guessing game! \nYou have five chances to guess a number between 1 and 100" << endl;
      
    while (guessCount < 5 && isGuessed == false){
    
        cout << "Make your guess: ";
        cin >> numGuessed;
        
        if (numGuessed < numSecret)
            cout << "Guess higher." << endl;
        else if (numGuessed > numSecret)
            cout << "Guess lower." << endl;
        else if (numGuessed == numSecret)
            {
            cout << "You win!";
            isGuessed = true;
            return 0;
            }
        guessCount++;
    }
    
        cout << "You lose!" << endl << endl;
        return 0;
      
}