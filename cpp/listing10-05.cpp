// Listing 10.5 - Copy constructors

#include <iostream>
using namespace std;

class Cat
{
  public:
    Cat();              // default constructor
    Cat (const Cat &);  // copy constructor
    ~Cat();             //destructor
    int GetAge() const  { return *itsAge; }
    int GetWeight() const { return * itsWeight;}
    void SetAge(int age){ *itsAge = age; }
    
  private:
    int *itsAge;
    int *itsWeight;
};

Cat::Cat()
{
    itsAge = new int;
    itsWeight = new int;
    *itsAge = 5;
    *itsWeight = 9;
}

Cat::Cat(const Cat & rhs)
{
    itsAge = new int;
    itsWeight = new int;
    *itsAge = rhs.GetAge(); //public access
    *itsWeight = *(rhs.itsWeight); //private access
}

Cat::~Cat()
{
    delete itsAge;
    itsAge = 0;
    delete itsWeight;
    itsWeight = 0;
}

int main()
{
    Cat Frisky;
    cout << "Frisky's age: " << Frisky.GetAge() << endl;
    cout << "Setting Frisky to 6...\n";
    Frisky.SetAge(6);
    cout << "Creating Boots from Frisky\n";
    Cat Boots(Frisky);
    cout << "Frisky's age: " << Frisky.GetAge() << endl;
    cout << "Boot's age: " << Boots.GetAge() << endl;
    cout << "setting Frisky to 7...\n";
    Frisky.SetAge(7);
    cout << "Frisky's age: " << Frisky.GetAge() << endl;
    cout << "boot's age: " << Boots.GetAge() << endl;
    return 0;
}
//destructor invoked for both after the cats fall out of scope.

//usually, use only regular integers instead of pointers for member variables
//done to illustrate how to do it. don't bother though. 
//useful for object within object? where the subobjects are pointers.

