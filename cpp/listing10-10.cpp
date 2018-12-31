// Listing 10.10 - operator++ returns a nameless temporary object

#include <iostream>

using namespace std;

class Counter
{
  public:
    Counter();
    Counter(int val);
    ~Counter(){}
    int GetItsVal() {return itsVal;}
    void SetItsVal(int x) {itsVal = x;}
    void Increment() {++itsVal;}
    Counter operator++ ();

  private:
    int itsVal;
};

Counter::Counter():
itsVal(0)
{}

Counter::Counter(int val):
itsVal(val)
{}

Counter Counter::operator++()
{
    ++itsVal;
    return Counter(itsVal);
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

