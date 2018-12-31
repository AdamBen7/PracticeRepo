// Listing 10.17 - Constructor as conversion operator

#include <iostream>

using namespace std;

class Counter
{
  public:
    Counter();
    Counter(int val);
    ~Counter(){}
    int GetItsVal() const { return itsVal; }
    void SetItsVal(int x) {itsVal = x; }
  private:
    int itsVal;
};

Counter::Counter():
itsVal(0)
{}

Counter::Counter(int val):
itsVal(val)
{}

int main()
{
    int theInt = 5;
    Counter theCtr = theInt;
    cout << "theCtr: " << theCtr.GetItsVal() << endl;
    return 0;
}

/*FOllows same logic as:
a=b;
a.operator=(b); work the same way
However, you will have a compiler error if you do the reverse: 
b=a since b.operator(a) was not the default operator overloading.
In this case, compiler now knows how to create a Couter out of an int 
but not the reverse    */
