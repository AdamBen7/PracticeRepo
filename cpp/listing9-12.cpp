// Listing 9.11 - Passing pointers to objects

#include <iostream>

using namespace std;
class SimpleCat
{
    public:
    SimpleCat();
    SimpleCat(SimpleCat&);
    ~SimpleCat();

    int GetAge() const { return itsAge;}
    void SetAge(int age) { itsAge = age;}

    private:
    int itsAge;
};

SimpleCat::SimpleCat()
{
    cout << "Simple Cat Constructor..." << endl;
    itsAge = 1;
}

SimpleCat::SimpleCat(SimpleCat&)
{
    cout << "Simple Cat Copy Constructor..." << endl;
}

SimpleCat::~SimpleCat()
{
    cout << "Simple Cat Destructor..." << endl;
}

const SimpleCat & FunctionTwo (const SimpleCat & theCat);

int main()
{
    cout << "Making a cat..." << endl;
    SimpleCat Frisky;
    cout << "Frisky is " << Frisky.GetAge() << " years old" << endl;
    int age = 5;
    Frisky.SetAge(age);
    cout << "Frisky is" << Frisky.GetAge() << " years old" << endl;
    cout << "Calling FunctionTwo..." << endl;
    FunctionTwo(Frisky);
    cout << "Frisky is " << Frisky.GetAge() << " years old" << endl;
    return 0;
}

// functionTwo, passes a const pointer
const SimpleCat & FunctionTwo
    (const SimpleCat & theCat)
{
    cout << "Function Two. Returning..." << endl;
    cout << "Frisky is now " << theCat.GetAge();
    cout << " years old " << endl;
    // theCat->SetAge(8); const!
    return theCat;
}







