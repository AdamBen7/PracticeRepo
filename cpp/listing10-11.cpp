// Listing 10.11 - Returning the dereferenced this pointer

#include <iostream>

using namespace std;

class Counter
{
  public:
    Counter();
    Counter(int val);
    ~Counter(){}
    int GetItsVal()const {return itsVal;}
    void SetItsVal(int x) {itsVal = x;}
    void Increment() {++itsVal;}
    const Counter& operator++ ();

  private:
    int itsVal;
};

Counter::Counter():
itsVal(0)
{};// apparently, not an error

Counter::Counter(int val):
itsVal(val)
{}

const Counter& Counter::operator++()
{
    ++itsVal;
    return *this; //avoids creation of an extra temporary object since here, you're just refering to the original object that has been incremented
}

int main()
{
    Counter i;
    cout << "The value of i is " << i.GetItsVal() << endl;
    i.Increment();
    cout << "The value of i is " << i.GetItsVal() << endl;
    ++i;
    cout << "The value of i is " << i.GetItsVal() << endl;
    Counter a = ++i;
    cout << "The value of a: " << a.GetItsVal();
    cout << " and i: " << i.GetItsVal() << endl;
    return 0;
}

