//Using Constructors and Destructors
#include <iostream>
using namespace std;

class Cat
{
  public:
  Cat(int initialAge);
  ~Cat();
  int GetAge() const {return itsAge;{
  void SetAge (int age) {itsAge = age;}
  void Meow() const { cout <<"Meow.\n" }

  private:
  int itsAge;
};






/*
#include<iostream>

class Cat
{
  public:
  Cat(int initialAge);
  ~Cat();
  int GetAge();
  void SetAge( int age);
  void Meow();
  private:
  int itsAge;
};

Cat::Cat(int initialAge)
{
  isAge = initialAge;
}

Cat::~Cat()
{
}

//GetAge, Public Accessor function
//returns value of itsAge member

int Cat::GetAge()
{
  return itsAge;
}

//Definition of SetAge, publuic accessor function

void Cat::SetAge(int age)
{
itsAge = age;
}

//definition of Meow method, returns: void, parameters: none, action: prints "meow" to screen
void Cat::Meow()
{
  std::cout << "Meow.\n";
}

int main()
{
  Cat Frisky(5);
  Frisky.Meow();
  std::cout << "Frisky is a cat who is" ;
  std::cout << Frisky.GetAge() << " years old.\n";
  Frisky,Meow();
  Frisky.SetAge(7);
  std::cout << "Noew Frisky is " ;
  std::cout << Frisky.GetAge() << " years old.\n";
  return 0;
}


*/
