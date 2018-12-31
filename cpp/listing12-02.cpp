// Listing 12.02 Using a derived object
#include <iostream>
using std::cout;
using std::endl;

enum BREED { GOLDEN, CAIRN, DANDIE, SHETLAND, DOBERMAN, LAB };

class Mammal
{
  public:
    // constructors
    Mammal(): itsAge(2), itsWeight(5) {}
    ~Mammal() {}

    // accessors
    int GetAge() const { return itsAge; }
    void SetAge(int age) { itsAge = age; }
    int GetWeight() const { return itsWeight; }
    void SetWeight(int weight) { itsWeight = weight; }

    // Other methods
    void Speak() const { cout << "Mammal ound!\n"; }
    void Slee() const { cout << "shhh. I'm sleeping.\n"; }

  protected:
    int itsAge;
    int itsWeight;
};

class Dog : public Mammal
{
  public:

    // Constructors
    Dog():itsBreed(GOLDEN){}
    ~Dog(){}

    //Accessor
    BREED GetBreed() const { return itsBreed; }
    void SetBreed(BREED breed) { itsBreed = breed; }
    
    //other methods
    void WagTail() const { cout << "Tail wagging... \n"; }
    void BegForFood() const { cout << "Begging for food...\n"; }

  private:
    BREED itsBreed;  
};

int main() 
{
    Dog Fido;
    Fido.Speak();
    Fido.WagTail();
    cout << "Fido is " <<Fido.GetAge() << "years old" << endl;
    return 0;
}

