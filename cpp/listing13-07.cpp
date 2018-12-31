// Listing 13.7 Illustrates How to Parse Out Words from a Character String
#include <iostream>
#include <ctype.h>
#include <string.h>
bool GetWord(char* theString, char* word, int& wordOffset);

//driver program
int main()
{
    const int bufferSize = 255;
    char buffer[bufferSize+1];  //hold the entire string
    char word[bufferSize+1];    //hold the word
    int wordOffset = 0;         //start at the beginning

    std::cout << "Enter a string: ";
    std::cin.getline(buffer,bufferSize);
    
    while (GetWord(buffer, word, wordOffset))
    {
        std::cout << "Got this word: " << word << std::endl;
    }
    return 0;
}

// function to parse words from a strign
bool GetWord(char* theString, char* word, int& wordOffset)
{
    if (theString[wordOffset]==0)   //end of string?
        return false;
    
    char *p1, *p2;
    p1 = p2 = theString+wordOffset; //point to the next word

    //eat leading spaces
    for (int i =0; i<(int)strlen(p1) && !isalnum(p1[0]); i++ )
        p1++;

    // see if you have a word
    if (!isalnum(p1[0]))
        return false;

    //p1 now points to start of next word
    //point p2 there as well
    p2=p1;
    
    // march p2 to end of word
    while (isalnum(p2[0]))
        p2++;

    // p2 is now at en of word
    // p1 is at beggining of word
    // length of word is the difference
    int len = int (p2 - p1);
    
    // copy the word into the buffer
    strncpy (word, p1, len);
    
    // null terminate it
    word[len] = '\0';

    // now find the beginning of the next word
    for (int j = int(p2 - theString); j<(int)strlen(theString) 
        && !isalnum(p2[0]); j++)
    {
        p2++;
    }

    wordOffset = int(p2-theString);

    return true;
}
