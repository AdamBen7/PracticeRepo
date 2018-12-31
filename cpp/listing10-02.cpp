// Listing 10.1 Overloading class member functions
#include <iostream>

using namespace std;

// Rectangle class declaration
class Rectangle
{
  public:
    // constructor
    Rectangle (int width, int height);
    ~Rectangle(){}
    void DrawShape(int aWidth, int aHeight,
        bool UseCurrentVals=false) const;

  private:
    int itsWidth;
    int itsHeight;
};

// Constructor implementation
Rectangle::Rectangle(int width, int height):
itsWidth(width),    //initializations
itsHeight(height)
{}                  //empty body


// default values used for third parameter
void Rectangle::DrawShape(
int width,
int height,
bool UseCurrentValue
) const
{
    int printWidth;
    int printHeight;

    if (UseCurrentValue == true)
    {
        printWidth = itsWidth;
        printHeight = itsHeight;
    }
    else
    {
        printWidth = width;
        printHeight = height;
    }


    for (int i = 0; i<printHeight; i++)
    {
        for (int j=0; j<printWidth; j++)
        {
           cout << "*";
        }
    cout << endl;
    }
}

//Driver program to demonstrate overloaded functions
int main()
{
    // initialize a rectangle to 30, 5
    Rectangle theRect(30,5);
    cout << "DrawShape(0,0,true)..." << endl; //supposed to print nothing however, "UseCurrentVal=true" so default value will be used instead of (0,0)
    theRect.DrawShape(0,0,true);
    cout << "\nDrawShape(40,2)..." << endl;
    theRect.DrawShape(40,2);
    return 0;
}

