#include <iostream>
#include <complex> // required for the complex class
#include <cmath>
#include <string>

using namespace std;
using cmplxF = complex<float>;  // make an alias for this type

int main()
{
    // Initialise variables
    int a, b, c;
    string choice;
    bool q = false;
    
    // Run the loop that calculates roots until the user requests to quit
    while (!q)
    {
    cout << "Enter coefficients a, b, and c to solve the quadratic equation in the form ax^2 + bx + c" << endl;
    cout <<  "a: ";
    cin >> a ;
    cout << "b: ";
    cin >> b ;
    cout << "c: ";
    cin >> c ;
        
    cmplxF rootPlus;
    cmplxF rootMinus;
    
    // Calculate the compex roots using the Quadratic Formula
    rootPlus = (complex<float>(-1*b) + (sqrt(complex<float>(pow(b,2)-4*a*c)))/(complex<float>(2*a)));
    rootMinus = (complex<float>(-1*b) - (sqrt(complex<float>(pow(b,2)-4*a*c)))/(complex<float>(2*a)));
    
    cout << " The roots of the equation are: " << rootPlus.real() << " + " << rootPlus.imag() << "i";
    cout << " and " << rootMinus.real() << " + " << rootMinus.imag() << "i" << endl;
    
    cout << endl << "To do further calculations press 'enter', otherwise press 'q' to quit: ";
    getline(cin, choice);
    
    if(cin.get() == 'q')
        q = true;
    else 
        q = false;
    
    cout << endl << endl;
    }
    
    return 0;

}