// Listing 13.10 char array buffers
#include <iostream>

int main()
{
    char buffer[80];
    std::cout << "Enter the string: ";
    std::cin >> buffer;
    std::cout << "Here's the buffer: " << buffer <<std::endl;
    return 0;
}
