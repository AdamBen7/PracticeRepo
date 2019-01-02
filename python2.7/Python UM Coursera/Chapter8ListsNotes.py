"""
cheese = ['Cheddar', 'Edam', 'Masdam', 'Emental', 'Gouda']
print cheese[1:3] #slicing.
"""
"""
#more slicing
>>> t = ['a', 'b', 'c', 'd', 'e', 'f']
>>> t[1:3]
['b', 'c']
>>> t[:4]
['a', 'b', 'c', 'd']
>>> t[3:]
['d', 'e', 'f']
"""

"""
#The + operator concatenates lists:
>>> a = [1, 2, 3]
>>> b = [4, 5, 6]
>>> c = a + b
>>> print c
[1, 2, 3, 4, 5, 6]
#Similarly, the * operator repeats a list a given number of times:
>>> [0] * 4
[0, 0, 0, 0]
>>> [1, 2, 3] * 3
[1, 2, 3, 1, 2, 3, 1, 2, 3]
#The first example repeats [0] four times. The second example repeats the list [1, 2, 3] three times.
"""

"""
empty = []

for x in empty:
	print 'Did this happen?' #no because when loop encounters empty set, it's not executed.
"""	


"""
numbers = [52, 55, 2, 626, 9, 68]
for i in range(len(numbers)):
	numbers[i] = numbers[i] * 2 #multiplies numbers in set by 2.
	print numbers


string = ['df', 'et', 'n', 'trl', 'z', 'gr']
for i in range(len(string)):
	string[i] = string[i] * 2 #doubles the strings. df becomes dfdf
	print string	
"""

"""
cheese = ['Cheddar', 'Edam', 'Masdam', 'Emental', 'Gouda']
cheese[3] = "Brie" #replaces #3, which is Emental with brie. updates
print cheese
"""
#Nested list: set within set. everything =['food', 'drinks', 'money', ['bills', 'trouble', 'blabla']]	 Nested list is counted as 1 element
"""	
cheese = ['Cheddar', 'Edam', 'Masdam', 'Emental', 'Gouda']
types = ['oiled', 'dry', 'melting', 'burnt']
bread = ['baguette', 'toast']
list = cheese + types +bread


choise = types[2]
cchois = bread[3] #when too far, won't work either
print choise
print cchois
#like in previous chapter, starts with 0. When we use len(cheese), it starts at 1.
"""
"""
>>> a = 'banana'
>>> b = 'banana'
>>> a is b
True
Python only created one string object, and both a and b refer to it.

But when creating 2 list, you get 2 objects.
>>> a = [1, 2, 3]
>>> b = [1, 2, 3]
>>> a is b
False
the two lists are equivalent, because they have the
same elements, but not identical, cuz not same objects. 
Same values, different objects.

If identical, then equivalent, yet converse isn't necesarily true.


>>> a = [1, 2, 3]
>>> b = a
>>> b is a
True
If a refers to an object, and you assign b = a, then both variables refer to same object


reference: the association of a variable with an object
When an object has more than one name, it is aliased.
Changes made to one alias affects the other if the obejct is mutable.
>>> b[0] = 17
>>> print a
[17, 2, 3]
Avoid aliasing when working with mutable objects.





List Arguments
def delete_head(t): #it exists btw. here's the explanation.(the 2nd line)
	del t[0] #it deletes first letter of a string or first element in list

>>> letters = ['a', 'b', 'c']
>>> delete_head(letters)
>>> print letters
['b', 'c']

append method modifies a list, but the +
operator creates a new list:

>>> t1 = [1, 2]
>>> t2 = t1.append(3)
>>> print t1
[1, 2, 3]
>>> print t2
None
>>> t3 = t1 + [3]
>>> print t3
[1, 2, 3]
>>> t2 is t3
False

def bad_delete_head(t): #this is not the true def of bad_delete_head()
	t = t[1:] 				# WRONG! in this case, function does not delete the head of the list





def tail(t):
	return t[1:]  #returns all but first element of a list
This function leaves the original list unmodified. Here’s how it is used:

>>> letters = ['a', 'b', 'c']
>>> rest = tail(letters)
>>> print rest
['b', 'c']
"""

#COrRECTION on last few notes
"""
#modifies list
def delete_head(t):
	del t[0]

letters = ['a', 'b', 'c']
delete_head(letters)
print letters

#makes new list
def tail(t):
	return t[1:]
	
letters = ['a', 'b', 'c']
rest = tail(letters)
print rest
"""




#Exercise 8.1 
#Write a function called chop that takes a list and modifies it, removing
	#the first and last elements, and returns None.
#Then write a function called middle that takes a list and returns a new list that
	#contains all but the first and last elements.
"""	
def chop(inpt):
	del inpt[0]
	del inpt[len(inpt)-1]
	
letters = ['a', 'b', 'c']
chop(letters)
print letters
"""
"""
def middle(inpt):
	return inpt[1: len(inpt)-1]
	
letters = ['a', 'b', 'c']
newletters = middle(letters)
print newletters
"""
#personal assignment: make it compatible for strings too.
	
