"""
a list is a kind of collection.
collection allows us to put many values in a single "variable"
a collection is nice because we can carry all many values around in one convenient package.
What's not a collection.
	most of our variables have one value in a variable
List Constants
list constants surrounded by square brakets and the elements in list separated by commas
A list element can be any python object even another list. print[5, 'ss', 5.699, []]
list can be empty print[]

lists and definte loops : best pals
friends = ['Jose', 'Glenn', 'Sally']
for friend in friends:
	print friend
Looking inside lists
[0, 1, 2] #elevator in europe
Lists areMutable
strings are "immutable": cannot change contents of a string, me must make a new strin to make anychange
lists are "mutable" we can change an eleement of a lis using the index operator.
example of immutable:
	fruit = 'Banana'
	fruit[0] = 'b'#to replace uppercase 'B'. Not possible! traceback type error!

How Long is a list?
len() function takes  list as a parameter and returns the number of elements in the list.
Actually len() tells us the number of elements in any set or sequence.

Range Function
range function returns a list of numbers that range from 0 to one less than the parameter.
can construct an index loop using for and an integer iterator.
"""
"""
#easier, simpler way:
friends = ['Joseph', 'Glenn', 'Sally']
for friend in friends:
	print 'Happy New Year:', friend
	
#useful to know where you're at like when you want to change something etc...	
for i in range(len(friends)):
	friend = friends[i]
	print 'Happy New Year:', friend
"""
"""	
Concactenate 2 existing lists together using "+" sign. Creates new list.
a = [1, 2, 3]
b = [4, 5, 6]
c= a + b #new list
Lists can be sliced using : . Works like strings
t = [9, 41, 12, 3, 74, 15]
print t[1:3] up to but not including number3. answer: [41,12]

List Methods: 
http://docs.python.org/tutorial/datastructures.html
>>> x= list()
>>> type(x)
<type 'list'>
>>> dir(x)
['__add__', '__class__', '__contains__', '__delattr__', '__delitem__', '__delslice__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__getslice__', '__gt__', '__hash__', '__iadd__', '__imul__', '__init__', '__iter__', '__le__', '__len__', '__lt__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__reversed__', '__rmul__', '__setattr__', '__setitem__', '__setslice__', '__sizeof__', '__str__', '__subclasshook__', 'append', 'count', 'extend', 'index', 'insert', 'pop', 'remove', 'reverse', 'sort']

Building a list from scratch
We can create an empty list and then add elements using the append method.
The list stays in order and new elements are added at the end of the list.
>>> stuff = list()
>>> stuff.append('book')
>>> stuff.append(99)
>>> print stuff
['book', 99]
>>> stuff.append('cookie')
>>> print stuff
['book', 99, 'cookie']


Is something in a list?
python provides two operators that let you check if an item is in a list
There are logical operators that return True or FalseThey do not modify the list
They don't modify list.
>>> some = [1, 9, 21, 10, 16]
>>> 9 in some
True
>>> 15 in some
False
>>> 20 not in some
True

A list in an Ordered Sequence
A lst can hold many items and keeps those items in the 
order until we do something to change the order
A list can be sorted (i.e change its order)
The sort method(unlike in strings) means "sort yourself"
>>> friends = ['Joseph', 'Glenn', 'Sally']
>>> friends.sort() #alters the list. places in alpha order. Don't forget. capticla come before lowercase
>>> print friends
['Glenn', 'Joseph', 'Sally']
>>> print friends[1]
Joseph

Built in Functions and Lists
There are a number of functions built into Python that take lists as parameters
Remember loops we built? These are much simpler.
	parameter: A name used inside a function to refer to the value passed as an
	argument. (ch4)
http://docs.python.org/lib/built-in-funcs.html
>>> nums = [3, 31, 12, 9, 74, 15]
>>> print len(nums)
6
>>> print max(nums)
74
>>> print min(nums)
3
>>> print sum(nums)
144
>>> print sum(nums)/len(nums) #average
24
"""	

#Let's try averaging with a list
"""
#What this does: asks for inputs. then adds them everytime through loop updating total and count.
total = 0
count = 0
while True:
	inp = raw_input('Enter a number: ')
	if inp == 'done': break
	value = float(inp)
	total = total +value
	count = count + 1
	
average = total/count
print 'Average:', average
"""
"""
#What it does: adds the inp as elements in list. Then adds elements. Divides by length
numlist = list()
while True:
	inp = raw_input('Enter a number: ')
	if inp == 'done' : break
	value = float(inp)
	numlist.append(value)
average = sum(numlist)/len(numlist)
print 'Average:', average
#only difference. 2nd stores the values so can take up memory...


Connecting Strings with Lists
Split breaks a strin into parts produces a list of strings.
We think of these as words
We can access a particular word or loop through all the words.
Split() is "very powerful"

>>> abc = 'With three words'
>>> stuff = abc.split()
>>> print stuff
['With', 'three', 'words']
>>> print len(stuff)
3
>>> print stuff[0]
With

>>> print stuff
['With', 'three', 'words']
>>>for w in stuff:
...	print want
...
With
three
words

When you do not specify a delimiter, multiple spaces are treated like "one" delimeter
You can specify what delimiter character to use in the splitting.
>>> line = 'A lot                      of spaces' #treated as one space. Gives 4 words.
>>> etc = line.split() 
>>> print etc
['A', 'lot', 'of', 'spaces']
>>> 
>>> line = 'first;second;third' 
>>> thing = line.split() #doesn't see semi-colon as a splitter. So since no space, treats as 1 string.
>>> print thing
['first;second;third']
>>> print len(thing)
1 						#one string..see?^
>>> thing = line.split(';') #pass semi-colon as splitter.  (can be any character)
>>> print thing
['first', 'second', 'third']
>>> print len(thing)
3
"""

From stephen.marquard@uct.ac.za Sat Jan 5 09:14:16 2008

fhand = open('mbox-short.txt')
for line in fhand:
	line = line.rstrip()
	if not line.startswith('From '): continue
	words = line.split()
	print words[2]

>>> line ='From stephen.marquard@uct.ac.za Sat Jan 5 09:14:16 2008'
>>> words = line.split()
>>> print words
['From', 'stephen.marquard@uct.ac.za', 'Sat', 'Jan', '5', '09:14:16', '2008']
#	0 		1							2		3	  4		5			6
>>> print len(line)
55 					#cuz it's treated as a string. Therefore letter count
>>> print len(words)
7					#cuz it's treated as list. Therefore element count





The Double Split Pattern
Sometimes we split a line one way and then grab one of the pieces of 
the line and split that piece again

line = From stephen.marquard@uct.ac.za Sat Jan 5 09:14:16 2008

words = line.split()  #split string into a list
email = words[1] 	#take out the word/element
pieces = email.split('@')  #split again.
print pieces[1] 		#get the host of mail address.




