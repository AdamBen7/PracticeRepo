#include <iostream>
#include "Rectangle.h"
#include "Point.h"

using namespace std;

Rectangle::Rectangle(int top, int left, int bottom, int right)
{
_top = top;
_left = left;
_bottom = bottom;
_right = right;

_upperLeft.SetX(left);
_upperLeft.SetY(top);

_upperRight.SetX(right);
_upperRight.SetY(top);

_lowerLeft.SetX(left);
_lowerLeft.SetY(bottom);

_lowerRight.SetX(right);
_lowerRight.SetY(bottom);
}

int Rectangle::GetArea() const
{
  int width = _right - _left;
  int height = _top - _bottom;
  return width*height;
}

int main()
{
  Rectangle myRect (100, 20, 50, 80);
  int Area = myRect.GetArea();

  cout << "Area: " << Area << endl;
  cout << "Upper Left X Coodrinate ";
  cout << myRect.GetUpperLeft().GetX();
  return 0;

}





