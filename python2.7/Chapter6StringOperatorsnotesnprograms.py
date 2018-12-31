"""
greet = 'Hello Bob'
zap = greet.lower()  #lower case copy of greet.
						#doesn't modify.
	#useful for ignoring upper/lower cases when searching for a string.
zap
print zap
print greet
print "Hi There'.lower()						
						
print greet.upper() #upper case of copy.

nstr = greet.replace('Bob', 'Jane') #make a copy. And change bob with jane.
print nstr

nstr = greet.replace('o', "X") #to make copy n replace the letters.
print nstr



#to take off white space. rstrip() for right side space. lstrip() for left side. strip() for both sides
greet = " Hello Bob "
print greet.lstrip() #response: "Hello Bob "
print greet.rstrip() #response: " Hello Bob"
print greet.strip()  #response: "Hello Bob"
#useful for cleaning up spaces ^


#Prefixes:
line = "Please have a nice day."
print line.startswith("Please") #response: True!
print line.startswith("p")      #response: False! Why? cuz case sensitive.

hence: 
better = line.lower()
print better.startswith("p")    #response: True! Yeyy

"""
#http://docs.python.org/lib/string-methods.html

#^site for string Library. List of functions for strings
"""
stuff = "Hello World"
print type(stuff) #what are you?
print dir(stuff) #what are all the things that are built in that I can make use of.
"""
"""
fruit = "banana"
pos = fruit.find("na") #when found, gives the number of where the first occurence is found.
print pos
aa= fruit.find("z") #when not found, answer is -1
print aa
"""
#Parsing Text:
#From stephen.marquard@uct.ac.za Sat Jan 5 09:14:16 2008

data = 'From stephen.marquard@uct.ac.za Sat Jan 5 09:14:16 2008'
atpos = data.find('@') #position of @ sign?
print atpos

sspos = data.find(' ',atpos) #position of space? meaning the end of email address.
print sspos

host = data[atpos+1 : sspos] # slicing operation. Start after "@" position and beyond up to but not including space
print host #got the piece you wanted. in this case between @ and space. 





#Other exercises:
"""
characterno = 0
word = raw_input('Place a word: ')
length = len(word)
count = -1
while True :
	print word[count]
	count = count - 1
	if -count > length : break
	else: continue
	
print "Done!"
"""
"""
def countA():
	word = raw_input("Word please: ")
	count = 0
	for letter in word:
		if letter == 'a':
			count = count + 1
	print count
countA("Damnita")
"""
"""
text = 'From stephen.marquard@uct.ac.za Sat Jan 5 09:14:16 2008'
thesign = text.find('@')

space = text.find(' ', thesign) #position of the first space after the '@' mark
print text[thesign + 1: space]
"""

