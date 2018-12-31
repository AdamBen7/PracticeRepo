// ***********************************************
//      FILE :      Listing E.1
//      PURPOSE:    Demonstrate a linked list
//      NOTES:
//
//  COPYRIGHT:  Copyright (C) 2000-04 Liberty Associates, Inc.
//                  All Rights Reserved
//
//  Demonstrates an object-oriented approach to 
//  linked lists. The list delegates to the node.
//  The node is anabstract data type. Three types of 
//  nodes are used, head nodes, tail nodes, and internal
//  nodes. Only the internal nodes hold data.
//
//  The Data class is created to serve as an object to
//  hold in the linked list.
//
// ***********************************************


#include <iostream>
using namespace std;

    enum { kISSmaller, kIsLarger, kIsSame};

// Data class to put into the linked list
// Any class in this linked list must support two methods:
// Show (displays the value and
// Comparwe (retrurns relative position)
class Data
{
  public:
    Data(int val):myValue(val){}
    ~Data(){}
    int Compare(const Data &);
    void Show() { cout << myValue << endl; }
  private:
    int myValue;
};

// Compare is used to decide where in the list
// a particluar object belongs
int Data::Compare(const Data & theOtherData)
{
    if (myValue < theOtherData.myValue)
        return kIsSmaller;
    if (myValue > theOtherData.myValue)
        return kIsLarger;
    if (myValue == theOtherData.myValue)
        return kIsSame;
}

// forward delcations
class Node;
class HeadNode;
class TailNode;
class InternalNode;

// ADT representing the node object in the list
// Every derived class must override Insert and Show
class Node
{
  public:
    Node(){}
    virtual ~Node(){}
    virtual Node * Insert(Data * theData)=0;
    virtual void Show() = 0;
  private:
};

// This is the node that ohlds the actual object
// In this case, the object is of type Data
// We'll see how to make this more general when
// we cover templates
class InternalNode: public Node
{
  public:
    InternalNode(Data * theData, Node * next);
    ~InternalNode(){ delete myNext; delete myData;}
    virtual Node * Insert(    


