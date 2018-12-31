//Listing 7.10 - Demonstrating multiple statements in for loops
#include <iostream>
using namespace std;

int main()
{
  for (int i=0, j = 0; i<3; i++, j++)
    std::cout << "i: " << i << " j: " << j << endl;
  return 0;
}

