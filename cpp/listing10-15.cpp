// Listing 10.15 - Copy constructors (an assignment operator)

#include <iostream>

using namespace std;

class Cat
{
  public:
    Cat(); //default constructor
    //copy constructor and destructor elided!
    int GetAge() const { return *itsAge; }
    int GetWeight() const {return *itsWeight;}
    void SetAge(int age) { *itsAge = age; }
    Cat & operator=(const Cat &);
    
  private:
    int *itsAge;
    int *itsWeight;
};

Cat::Cat()
{
    itsAge = new int;
    itsWeight = new int;
    *itsAge =5;
    *itsWeight=9;
}


Cat & Cat::operator=(const Cat & rhs)
{
    if (this == &rhs)
        return *this;
    *itsAge = rhs.GetAge();
    *itsWeight = rhs.GetWeight();
    return *this;
}


int main()
{
    Cat Frisky;
    cout << "Frisky's age: " << Frisky.GetAge() << endl;
    cout << "Setting Frisky to 6 ... \n";
    Frisky.SetAge(6);
    Cat Whiskers;
    cout << "Whiskers' age: " << Whiskers.GetAge() << endl;
    cout << "copy Frisky to Whiskers... \n";
    Whiskers = Frisky;
    cout << "Whiskers' age: " << Whiskers.GetAge() << endl;
    return 0;
}


