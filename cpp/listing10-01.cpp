// Listing 10.1 Overloading class member functions
#include <iostream>

// Rectangle class declaration
class Rectangle
{
  public:
    // constructor
    Rectangle (int width, int height);
    ~Rectangle(){}
    
    // overloaded class function DrawShape
    void DrawShape() const;
    void DrawShape(int aWidth, int aHeight) const;

  private:
    int itsWidth;
    int itsHeight;
};

// Constructor implementation
Rectangle::Rectangle(int width, int height)
{
    itsWidth = width;
    itsHeight = height;
}


// Overloaded DrawShape - takes no values
// Draws baed on current class member values
void Rectangle::DrawShape() const
{
    DrawShape( itsWidth, itsHeight);
}


//Overloaded DrawShape - takes two values
// draws shape based on the parameters
void Rectangle::DrawShape(int width, int height) const
{
    for (int i = 0; i<height; i++)
    {
        for (int j=0; j<width; j++)
        {
            std::cout << "*";
        }
    std::cout << std::endl;
    }
}

//Driver program to demonstrate overloaded functions
int main()
{
    // initialize a rectangle to 30, 5
    Rectangle theRect(30,5);
    std::cout << "DrawShape():" << std::endl;
    theRect.DrawShape();
    std::cout << "\nDrawShape(40,2)" << std::endl;
    theRect.DrawShape(40,2);
    return 0;
}

