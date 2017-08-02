// complex.cpp
// Multiplying complex numbers

#include <iostream>
#include <complex> // required for the complex class

using namespace std;

using cmplxF = complex<float>;

int main()
{
    cmplxF num1{ 2.0, 2.0 };  // using C++11 uniform initialisation syntax
    cmplxF num2{ 4.0, -2.0 }; // old syntax: complex<float> num2(4.0,-2.0);

    auto answer = num1 * num2; // using C++11 auto keyword,
                               // answer is of type: complex<float>

    cout << "The answer is: " << answer << endl;
    cout << "Or in a more familiar form: " << answer.real() << " + " << answer.imag() << "j" << endl;

    //answer += 1;
    //cout << "The answer is: " << answer << endl;

    // answer++;
    
    // The increment operator isn't available for objects of the complex class. This can be achieved
    // by answer += 1 which increments the real part of answer.

    return 0;
}
