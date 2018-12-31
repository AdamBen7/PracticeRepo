// Listing 8.7 - Pointers as data mebers
// accessed with -> operator

#include <iostream>

using namespace std;

class SimpleCat
{
  public:
    SimpleCat();
    ~SimpleCat();
    int GetAge() const {return *itsAge; }
    void SetAge(int age) {*itsAge = age; }
    int GetWeight() const {return *itsWeight; }
    void SetWeight(int age) {*itsWeight = age; }
  private:
    int * itsAge;
    int * itsWeight;
};

SimpleCat::SimpleCat()
{
    itsAge = new int(2);        //initializing value as well
    itsWeight = new int(5);

}

SimpleCat::~SimpleCat()
{
    delete itsAge;
    delete itsWeight;
}


int main()
{
    using namespace std;
    SimpleCat *Frisky = new SimpleCat;
    cout << "Frisky is " <<Frisky->GetAge() << " years old " << endl;   
    Frisky->SetAge(5);
    cout << "Frisky is " <<Frisky->GetAge() << " years old " << endl;   
    delete Frisky;
    return 0;
}
