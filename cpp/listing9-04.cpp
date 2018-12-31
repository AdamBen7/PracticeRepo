// Listing 9.4 - References to class objects

#include <iostream>
using namespace std;
class SimpleCat
{
  public:
    SimpleCat( int age, int weight);
    ~SimpleCat(){}
    int GetAge() const{return itsAge;}
    int GetWeight() const{return itsWeight;} 
  private:
    int itsAge;
    int itsWeight;
};

SimpleCat::SimpleCat(int age, int weight)
{
    itsAge = age;
    itsWeight = weight;
}

int main()
{
    SimpleCat Frisky(5,8);
    SimpleCat & rCat = Frisky;

    cout << "Frisky is: ";
    cout << Frisky.GetAge() << " years old." << endl;
    cout << "and Frisky weighs: ";
    cout << rCat.GetWeight() << " pounds." << endl;
    return 0;
}
