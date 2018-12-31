#Chapter 7 Files

#opening files using the open() function.
#open(filename, mode) If no mode, assumed to be read. (r)
# open('crappyfile','w') 'w' for writing 'r' or nothing for reading.
# usually, make equation to act as a handle.
	#handle = open(filename,mode)
#file name is a string
#===to keep it simple, python code has to be in same file as the file you're opening.===


#the newline character
	#  " \n "is one character. Used as a special character to indicate when a line ends.
	#used to "encode a new line in a string
	#can consider them as "punctuations"
"""
	stuff = "X\nY"
print stuff
print len(stuff) #will say 3, not 2, not 4. c1: X, c2: \n, c3:  Y.
"""

#How to print out every line in a file:
xfile = open ('mbox.txt') #xfile: handle, open: function, mbox.txt: file name. No mode so reading.
for line in xfile:
	print line		#definite loop to print each line out
#so "a file handle open for read can be treated as a sequence of strings 
	#where each line in the file is a string in the sequence
#we can use the for statement to iterate through a sequence
# a sequence is an ordered set.
__________
"""
#Counting lines in a file
fhand = open('mbox.txt')
count = 0
for line in fhand:
	count= count + 1
print 'Line Count:', count

#can't say len(fhand) since fhand isnt the file, only the handle.
#result: python open.python
		#line Count: 132045
"""
__________		

"""
#Reading the *Whole* File
fhand = open('mbox-short.txt')
inp = fhand.read()		#read whole file(newlines and all) into a single string.
print len(inp)
answer:9462
print inp[:20]
response: From Stephen.marquar.
"""
__________
"""
#Searching Through a File
#we can use conditionals if statement in our "for" loop to only print lines that meet some criteria.
fhand = open('mbox-short.txt')
for line in fhand:				 #line is the iteration variable. fhand is the handle.
	if line.startswith('From:'): #Startswith() utility function! adds criteria.
		print line
#Result:
#xx@hotmail.com \n
#\n
#xy@hotmail.com \n
#\n 
#xz@hotmail.com \n
#\n
#Why? Because odd \n came with file. Even \n was added by print. We only need one each time.
#Solution? use the rstrip() function. Space and \n both considered whitespace
"""
"""
fhand = open ('mbox-short.txt')
for line in fhand:
	line = line.rstrip()
	if line.startswith('From:'):
		print line
#works!!		
"""
"""
#Skipping with continue
fhand = open ('mbox-short.txt')
for line in fhand:
	line = line.rstrip()
	if not line.startswith('From:'):
	#if not '@uct.ac.za' in line: # using "in" to search
		continue 	#skip all lines not starting with from.
	print line #print the ones that aren't skipped, meaning lines starting with from
"""

"""
#Prompting for File Name
fname = raw_input('Enter the file name: ')
fhand = open(fname)
count = 0
for line in fhand:
	if line.startswith('Subject:'):
	count = count+1
print "There were", count, 'subject lines in', fname.
"""
"""		
#Catching Bad File Names:
fname = raw_input('Enter the file name: ')
try:
	fhand = open(fname)
except:
	print "File cannot be opened:', fname
	exit()
	
count = 0
for line in fhand:
	if line.startswith('Subject:'):
	count = count+1
print "There were", count, 'subject lines in', fname.
"""


"""
======
Space tabs and Newlines
" "  \t   \n
example: 
>>> s = '1 2\t 3\n 4'
>>> print s
1 2    3
4
How to know which:
do: repr(any argument) to convert to a string which shows the \t and \n  \r   <last one is return


Know about converting 
wikipedia.org/wiki/Newline