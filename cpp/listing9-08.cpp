// Listing 9.8 - Returning multiple values from a function
// NEED TO REVIEW... I DONT UNDERSTAND
#include <iostream>

using namespace std;
short Factor(int n, int * pSquared, int * pCubed);

int main()
{
    int number, squared, cubed;
    short error;

    cout << "Enter a number (0 - 20): ";
    cin >> number;

    error = Factor(number, &squared, &cubed);

    if (!error)
    {
        cout "number: " << number << endl;
        cout "squared: " << squared << endl;    
        cout "cubed: " << cubed << endl;
    }
    else
        cout << "Error encountered!!" << endl;
    return 0;
}

short Factor(int n, int *pSquared, int *pCubed)
{
    short Value = 0;
    if (n > 20)
        Value = 1;
    else
    {
        *pSqaured = n*n;
        *pCubed = n*n*n;
        Value = 0;
    }
    return Value;
}
