// Listing 9.6 - Demonstrates passing by reference
#include <iostream>

using namespace std;
void swap(int *x, int *y);

int main()
{
    int x = 5, y = 10;
    
    cout << "Main. Before swap, x: " << x << " y: " << y << endl;
    swap(&x,&y);
    cout << "Main. After swap, x: " << x << " y: " << y << endl;
    return 0;
}

void swap(int *px, int *py)
{
    int temp;
    
    cout << "Swap. Before swap, *px, *py: " << *px << ", " << *py << endl;

    temp = *px;
    *px = *py;
    *py = temp;

    cout << "Swap. After swap, *px, *py: " << *px << ", " << *py << endl;
}
