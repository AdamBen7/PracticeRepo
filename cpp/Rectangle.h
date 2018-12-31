#include <iostream>
//#include "Point.h"

class Point;

class Rectangle
{

  public:
  Rectangle (int top, int left, int bottom, int right);
  ~Rectangle(){}

  int GetTop() const {return _top;}
  int GetLeft() const {return _left;}
  int GetBottom() const {return _bottom;}
  int GetRight() const {return _right;}
  
  Point GetUpperLeft() const {return _upperLeft;}
  Point GetUpperRight() const {return _upperRight;}
  Point GetLowerLeft() const {return _lowerLeft;}
  Point GetLowerRight()const {return _lowerRight;}

  void SetUpperLeft(Point location) {_upperLeft = location;}
  void SetUpperRight(Point location) {_upperRight = location;}
  void SetLowerLeft(Point location) {_lowerLeft = location;}
  void SetLowerRight(Point location) {_lowerRight = location;}

  int GetArea() const;

  private:
  Point _upperLeft;
  Point _upperRight;
  Point _lowerLeft;
  Point _lowerRight;
  int _top;
  int _left;
  int _bottom;
  int _right;


};


