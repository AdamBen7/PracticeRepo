
#What is a Collection?
"""A collection is nice because we can put more than one value
in them and carry them around in one convenient package.
We have a bunch of values in a single "variable"
We do this by having more than one place "in" the variable
We have ways of finding the different places in the variable

What's Not a collection?
Most of our variables have one value in them - when 
we put a new value in the variable- the old value is overwritten
>>> x= 2
>>> x= 4
>>> print x
4
"""
"""
Dictionary allows us to put many more things unlike this.
List: a linear collection of values that stay in order.
Dictionary: a "bag" of values, each with its own label.
	not in order
	have lables. Key/value
Most powerful data collection
allows us to do fast database-like operations in Python
Dictionaries have idfferent names in different languages
	Associative Arrays - Perl/Php
	Properties Map or HashMap - Java
	Property Bag - C sharp/ .Net
http://en.wikipedia.org/wiki/Associative_array

Lists index their entries based on the position in the list
Dictionaries are lke bags - no order (unlike lists)
So we index the thigns we put in the dicionary with a "lookup tag"


Can add data directly:
>>> ploo = dict()
>>> ploo = {'money': 12, 'tissue': 99}
>>> print ploo
{'money': 12, 'tissue': 99}
=====


>>> purse = dict() #makes variable (which is a string) purse a dictionary
>>> purse['money'] = 12 #['money'] is the lookup tag. 12 is value
>>> purse['candy'] = 3
>>> purse['tissue'] = 75
>>> print purse 		#print the whole dict()
{'money': 12, 'tissue': 75, 'candy': 3}
>>> print purse['candy'] #prints only value for 'candy'
3
>>> purse['candy'] = purse ['candy'] +2 #updates purse['candy']
>>> print purse
{'money': 12, 'tissue': 75, 'candy': 5}

Dictionaries give power while lists give order.
"""
"""
Key and Values:
For lists:
[O]		21
[1]		183

For Dictionaries:
[anyword] 183
[blabla ] 21


Dictionary Literals (Constants)
Dictionary literals use curly braces and have
a list o key : value pairs
You can make an empty dictionary using empty curly braces
>>> jjj= {'chuck': 1, 'fred': 42, 'jan': 100}
>>> print jjj
{'chuck': 1, 'fred': 42, 'jan': 100}
>>> ooo = {}
>>> print ooo
{}


Counting Using Dictionaries:
One common use of dictionary is counting how 
often we "see" something
>>> ccc = dict()
>>> ccc['csev'] = 1 #When we see someone for the first time, we could create an entry. 
>>> ccc['cwen'] = 1 
>>> print ccc
{'csev': 1, 'cwen': 1}
>>> ccc['cwen'] = ccc['cwen'] + 1
>>> print ccc
{'csev': 1, 'cwen': 2}

Dictionary Tracebacks
It is an error to reference a key which is not in the dictionary.
We can use the in operator to see if a key is in the dictionary.
>>> ccc = dict()
print ccc['csev']
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
 KeyError: 'csev'
>>> print 'csev' in ccc  #is 'csev' in ccc?
False 
"""



#When we see a new Name:

counts = dict()
names = ['csev', 'cwen', 'csav', 'zqian', 'cwen']
for name in names:
	if name not in counts:
		counts[name] = 1
	else:
		counts[name] = counts[name] + 1
print counts




#The get method for dictionary
"""
This pattern of checking to see if a key is already in a dictionary
and assuming a default value if the key is not there is so common,
that there is a method called get()
that does this for us.

Default value if key does not exist (and no Traceback!)
"""


if name in counts:
	print counts[name]
else:
	print 0 #default value of each.

print counts.get(name,0)  #name and associated value starts at 0 in this case.
#output:{'csev': 2, 'zqian': 1, 'cwen': 2}



#Simplified Counting with get()
"""
We can use get() and provide a default value of zero 
when the key is not yet in the dictionary - and then just add one
"""


counts = dict()
names = ['csev', 'cwen', 'csav', 'zqian', 'cwen']
for name in names:
	counts[name] = counts.get(name, 0) + 1 			 #creates setting to 1 from 0. or updates.
print counts



#Counting Pattern
"""The general pattern to count the words in a line of 
text is to split the line into words, then loop through
the words and use a dictionary to track the count of each
word independently. """

#My Try:

counts = dict()
print "Enter a line of text:"
line = raw_input()
line = line.split()
for word in line:
	counts[word] = counts.get(word, 0) + 1
print counts


#Video's

counts = dict()
print "Enter a line of text:"
line = raw_input()

words = line.split()
print "Words:", words

print "Counting..."
for word in words:
	counts[word] = counts.get(word,0) + 1 

print "Counts", counts



#Definite Loops and Dictionaries
"""Even though dictionaries are not stored in order, we can
writa a for loop that goes through all the entries in a 
dictionary...- actually it goes through all of the keys in
the dictionary and looks up the values"""

>>> counts = {'chuck': 1, 'fred': 42, 'jan': 100}
>>> for key in counts
...		print key, counts[key]
...
jan 100
chuck 1
fred 42

#Retrieving lists of Keys and Values
"""You can get a list of keys, values or items(both) from a
dictionary."""

>>> jjj = {'chuck': 1, 'fred': 42, 'jan': 100}
>>> print type(jjj
<type 'dict'> 
>>> print list(jjj)
['jan', 'chuck', 'fred']
>>> print type(jjj)
<type 'dict'> 		#just reminding myself that list() doesn't change the type. 
>>> print jjj.keys() #same thing as list() in this case
['jan', 'chuck', 'fred']
>>> print jjj.values()
[100, 1, 42]
>>> print jjj.items()
[('jan', 100), ('chuck', 1), ('fred', 42)]

#last one is a list of "tuples" ..next chapter




#Bonus: Two Iteration Variables!
"""We loop through the key-value pairs in a dictionary 
using *two* iteration variables.
Each iteration, the firt variable is the key and the 
second variable is the corresponding value for the key. """

>>> jjj = {'chuck': 1, 'fred': 42, 'jan': 100}
>>> fo aaa,bbb in jjj.items():	 #aaa,bbb move in a synchronized way
...		print aaa, bbb 			 #key, value in this case
...
jan 100
chuck 1
fred 42

"""
aaa		bbb
[jan]	100
[chuck]	1
[fred]	42
"""








#========================================#

#File Word Counter! of Chapter 1!

#========================================#

name = raw_input("Enter file:") #prompts user to give file name
handle = open(name, 'r')
text = handle.read() # read whole file in 1 go. put in variable called text
words = text.split() #go through whole string and split it all to make a list of words


#Accumulate counters in a dictionary.
counts = dict()
for word in words:
	counts[word] = counts.get(word, 0) + 1


#largest word count, loop
bigcount = None
bigword = None
for word,count in counts.items(): #2 variable iteration
	if bigcount is None or count > bigcount:
	bigword = word
	bigcount = count
	
print bigword, bigcount 	#word that's most common, number of appearance

#===============================================#











