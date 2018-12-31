// Listing 8.8
// Using the this pointer

#include <iostream>
using namespace std;

class Rectangle
{
  public:
    Rectangle();
    ~Rectangle();
    void SetLength(int length) { itsLength = length; }
    int GetLength() const { return this->itsLength; }

    void SetWidth(int width) { itsWidth = width; }
    int GetWidth() const { return itsWidth; }

  private:
    int itsLength;
    int itsWidth;
};

Rectangle::Rectangle()
{
    itsWidth = 5;
    itsLength = 10;
}
Rectangle::~Rectangle()
{}

int main()
{
    Rectangle * pRect = new Rectangle;
    const Rectangle * pConstRect = new Rectangle;
    Rectangle * const pConstPtr = new Rectangle;

    cout << "pRect width: " << pRect->GetWidth()
      << " feet" << endl;
    cout << "pConstRect width: " << pConstRect->GetWidth()
      << " feet" << endl;
    cout << "pConstPtr width: " << pConstPtr->GetWidth()
      << " feet" << endl;


    pRect->SetWidth(10);
    //pConstRect->SetWidth(10); //error. cannot change a const rectangle
    pConstPtr->SetWidth(10);
    cout << "pRect width: " << pRect->GetWidth()
      << " feet" << endl;
    cout << "pConstRect width: " << pConstRect->GetWidth()
      << " feet" << endl;
    cout << "pConstPtr width: " << pConstPtr->GetWidth()
      << " feet" << endl;
    return 0;
}
