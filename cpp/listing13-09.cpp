// Listing 13.9 Reallocating an Array at Runtime
#include <iostream>
using namespace std;
int main()
{
    int AllocationSize = 5;
    int *pArrayOfNumbers = new int[AllocationSize];
    int ElementsUsedSoFar = 0;
    int MaximumElementsAllowed = AllocationSize;
    int InputNumber = -1;
    
    cout << endl << "Next Numbe = ";
    cin >> InputNumber;

    while (InputNumber > 0 )
    {
        pArrayOfNumbers[ElementsUsedSoFar++] = InputNumber;
        
        if ( ElementsUsedSoFar == MaximumElementsAllowed )
        {
            int *pLargerArray = 
                new int[MaximumElementsAllowed+AllocationSize];
            
            for ( int CopyIndex = 0;
                CopyIndex <MaximumElementsAllowed;
                CopyIndex++ )
            {
                pLargerArray[CopyIndex] = pArrayOfNumbers[CopyIndex];
            };

            delete [] pArrayOfNumbers;
            pArrayOfNumbers = pLargerArray;
            MaximumElementsAllowed+= AllocationSize;
        };
        cout << endl << "Next number = ";
        cin >> InputNumber;
    }
  
    for (int Index = 0; Index < ElementsUsedSoFar; Index++)
    {
        cout << pArrayOfNumbers[Index] << endl;
    }
    return 0;
}
