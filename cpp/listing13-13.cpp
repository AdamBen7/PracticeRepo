// Listing 13.13 Using strncpy()
#include <iostream>
#include <string.h>

int main()
{
    const int MaxLength = 80;
    char String1[] = "No man is an island";
    char String2[MaxLength+1]; //last char should be null char

    strncpy(String2, String1, MaxLength);
    
    std::cout << "String1: " << String1 << std::endl;
    std::cout << "String2: " << String2 << std::endl;
    return 0;
}
