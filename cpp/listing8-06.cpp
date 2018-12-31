// Listing 8.6 - Accessing data members of objects on the heat
// using the -> operator

#include <iostream>

using namespace std;

class SimpleCat
{
  public:
    SimpleCat() {itsAge = 2; }
    ~SimpleCat(){}
    int GetAge() const {return itsAge; }
    void SetAge(int age) {itsAge = age; }
  private:
    int itsAge;
};

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
