// Exercising the Screen class

// Comments are inclued in the screen.cpp file as well as in this file. 

#include "screen.h"
#include <iostream>

using namespace std;

Screen myScreen;
enum Direction: int {HOME, FORWARD, BACK, UP, DOWN, END};

void drawSquare( string::size_type startRow, string::size_type startCol, int sideLength )
{
    // Check for errors
    // Check if square size is bigger than screen size
    if (sideLength > myScreen.width() || sideLength > myScreen.height())
    {
        cerr << "Your square is too big to fit on the screen";
        return;
    }
    if (startCol+sideLength-1 > myScreen.width() || startRow+sideLength-1 > myScreen.height())
    {
        cerr << "Your square is too big to fit on the screen without wrap-around. The image may not appear as intended \n";
    }
    
    // set the cursor at the start position
    myScreen.move(startRow,startCol);
    myScreen.set('*');
    
    // draw top side
    for (int i=0; i<sideLength-1; i++)
    {
        myScreen.move(Screen::Direction::FORWARD);
        myScreen.set('*');
    }
    // draw right side
    for (int i=0; i<sideLength-1; i++)
    {
        myScreen.move(Screen::Direction::DOWN);
        myScreen.set('*');
    }
    // draw bottom side
    for (int i=0; i<sideLength-1; i++)
    {
        myScreen.move(Screen::Direction::BACK);
        myScreen.set('*');
    }
    // draw left side
    for (int i=0; i<sideLength-1; i++)
    {
        myScreen.move(Screen::Direction::UP);
        myScreen.set('*');
    }
    
    myScreen.display();

    return;
}



int main()
{
	myScreen = Screen{6,6};

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
    
    // Make the first letter of my name, L, diaplay
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
    myScreen.display();
    
    // Overload Move function
    myScreen.move(Screen::Direction::HOME);
    myScreen.move(Screen::Direction::DOWN);
    myScreen.move(Screen::Direction::DOWN);
    myScreen.move(Screen::Direction::BACK);
    myScreen.set("*");
    myScreen.display();
    
    // Include UP and DOWN Wrap-around
    myScreen.move(Screen::Direction::HOME);
    myScreen.move(Screen::Direction::UP);
    myScreen.set("----");
    myScreen.display();
    
    myScreen.move(Screen::Direction::END);
    myScreen.move(Screen::Direction::DOWN);
    myScreen.move(Screen::Direction::BACK);
    myScreen.move(Screen::Direction::BACK);
    myScreen.set("--");
    myScreen.display();
    
    // Draw a square on the screen.
    myScreen.clear(' ');
    drawSquare(3,3,6);
    
    /* It is not necessary to access the internal representation of the Screen class
     * in order to implement this function. The existing interface is sufficient as
     * all the required functionas are pubicly accessible. 
     * 
     * The screen object is responsible for initialising the screen and drawing a 
     * single character at the cursor position. Drawing a square makes use of this 
     * but is not a undamental screen function so it should not be included in 
     * screen.cpp. 
     * */

	return 0;
}

