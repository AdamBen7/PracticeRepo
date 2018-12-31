//Pg327 Exercises. #5 and #6 and #7
// Write a SimpleCircle class declaration.

#include <iostream>
using namespace std;

class SimpleCircle
{
  public:
    SimpleCircle();
    SimpleCircle( int val);
    SimpleCircle( const SimpleCircle &);
    ~SimpleCircle(){}
    int GetItsRadius() { return *itsRadius; }
    void SetItsRadius(int x) { *itsRadius = x; }
    const SimpleCircle& operator++ (); //prefix
    const SimpleCircle operator++(int); //postfix)
    SimpleCircle & operator=(const SimpleCircle &);
  private:
    int *itsRadius;
};

SimpleCircle::SimpleCircle()
{
    itsRadius = new int;
    *itsRadius = 5;    
}

SimpleCircle::SimpleCircle(int val)
{
    *itsRadius = val;
}

SimpleCircle::SimpleCircle( const SimpleCircle & rhs)
{
    itsRadius = new int;
//    *itsRadius = rhs.GetItsRadius(); //public access. doesn't work...
    *itsRadius = *(rhs.itsRadius); //private access
}

const SimpleCircle & SimpleCircle::operator++() //prefix
{
  ++*itsRadius;//worried about this line. can we do it? it compiled!probably causing errors
  return *this;
}


//postfix: makes copy, increments, returns non incremented object copy
const SimpleCircle SimpleCircle::operator++(int theFlag) 
{
  SimpleCircle temp(*this);
  ++*itsRadius;
  return temp;
}

SimpleCircle & SimpleCircle::operator=(const SimpleCircle & rhs)
{
    if (this == &rhs)
        return *this;
    delete itsRadius;
    itsRadius = new int;
    *itsRadius = rhs.GetItsRadius();
    return *this;
}
