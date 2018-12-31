//Pg327 Exercises. #1 and #2 and #3 and #4
// Write a SimpleCircle class declaration.

#include <iostream>
using namespace std;

class SimpleCircle
{
  public:
    SimpleCircle();
    SimpleCircle( int val);
    ~SimpleCircle(){}
    int GetItsRadius() { return itsRadius; }
    void SetItsRadius(int x) { itsRadius = x; }
    const SimpleCircle& operator++ (); //prefix
    const SimpleCircle operator++(int); //postfix)
  private:
    int itsRadius;
};

SimpleCircle::SimpleCircle():
itsRadius(5)
{}

SimpleCircle::SimpleCircle(int val)
{
    itsRadius = val;
}

const SimpleCircle & SimpleCircle::operator++() //prefix
{
  ++itsRadius;
  return *this;
}


//postfix: makes copy, increments, returns non incremented object copy
const SimpleCircle SimpleCircle::operator++(int theFlag) 
{
  SimpleCircle temp(*this);
  ++itsRadius;
  return temp;
}


