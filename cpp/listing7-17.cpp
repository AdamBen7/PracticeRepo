//Listing 7.17 - Using a Forever Loop to manage user interaction
#include <iostream>

//prototype
int menu();
void DoTaskOne();
void DoTaskMany(int);

using namespace std;

int main()
{
    bool exit = false;
    for (;;) //forever loop
    {
        int choice = menu();
        switch(choice)
        {
            case (1):
              DoTaskOne();
              break;
            case (2):
              DoTaskMany(2);
              break;
            case (3):
              DoTaskMany(3);
              break;
            case (4):
              continue; //redundant!
              break;
            case (5):
              exit = true;
              break;
            default:
              cout << "Please select again! " << endl;
              break;
        }

        if (exit == true)
            break;
    }
    return 0;
}

int menu()
{
    int choice;

    cout << " **** Menu **** " << endl <<endl;
    cout << " (1) Choice one. " << endl;
    cout << " (2) Choice two. " << endl;
    cout << " (3) Choice three. " << endl;
    cout << " (4) Redisplay Menu. " << endl;
    cout << " (5) Quit. " << endl << endl;
    cout << ": ";
    cin >> choice;
    return choice;
}

void DoTaskOne()
{
  cout << "Task One! " << endl;
}

void DoTaskMany(int which)
{
  if (which == 2)
    cout << "Task Two! " << endl;
  else 
    cout << "Task Three! " << endl;
}

