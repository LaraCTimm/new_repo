// Exercising the Screen class
#include "screen.h"
#include <iostream>

using namespace std;

    enum Direction: int {HOME, FORWARD, BACK, UP, DOWN, END};


int main()
{
	Screen myScreen{6,6};

//	myScreen.forward();
//	myScreen.set('*');
//	myScreen.down();
//	myScreen.set('*');
//	myScreen.move(3,3);
//	myScreen.set("---");
//
//	myScreen.display();
//	cout << endl;
//
//	myScreen.reSize(16,16);
//	myScreen.display();
//	myScreen.clear(' ');
//
//	myScreen.move(7,7);
//	myScreen.set("BIG");
//	myScreen.move(8,5);
//	myScreen.set("SCREEN");
//	myScreen.display();

    myScreen.clear(' ');
    myScreen.set('*');
    myScreen.down();
    myScreen.set('*');
    myScreen.down();
    myScreen.set('*');
    myScreen.down();
    myScreen.set('*');
    myScreen.down();
    myScreen.set('*');
    myScreen.down();
    myScreen.set("******");
    //myScreen.display();
    
    myScreen.move(Screen::Direction::HOME);
    myScreen.move(Screen::Direction::DOWN);
    myScreen.move(Screen::Direction::DOWN);
    myScreen.move(Screen::Direction::BACK);
    myScreen.set("*");
    myScreen.display();



	return 0;
}

