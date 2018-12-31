// Listing 12.1 Simple Inheritance
#include <iostream>
using namespace std;

enum BREED { GOLDEN, CAIRN, DANDIE, SHETLAND, DOBERMAN, LAB };

class Mammal
{
  public:
    //constructors
    Mammal();
    ~Mammal();

    //accessors
    int GetAge();
    void SetAge(int);
    int GetWeight() const;
    void SetWeight(int);
    
    //Other methods
    void Speak() const;
    void Sleep() const;
  protected:
    int itsAge;
    int itsWeight;
};

class Dog : public Mammal
{
  public:
    
    // Constructors
    Dog();
    ~Dog();
    
    // Accessros
    BREED GetBreed() const;
    void SetBreed(BREED);
    
    // Other methods
    WagTail();
    BegForFood();

  protected:
    BREED itsBreed;
};
