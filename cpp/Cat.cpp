#include <iostream>
#include "Cat.h"

using namespace std;

Cat::Cat(int initialAge)
{
  itsAge = initialAge;
}

Cat::~Cat()
{
}

int main()
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
