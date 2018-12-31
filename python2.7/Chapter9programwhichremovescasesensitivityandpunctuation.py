import string #imports list of 256 strings. 
"""fname = raw_input('Enter file name :')
try: 
	fhand = open(fname)
except:
	print 'File called', fname,'cannot be found!'
	exit()"""
fhand = 'This is this. \n "That is that!"'



counts = dict()
for line in fhand:
	line = line.translate(None, string.punctuation) #removes punctuations
	line = line.lower() #removes upper-case lower-case sensitivity
	words = line.split() #removes spaces
	for word in words: 
		if word not in counts:
			counts[word] = 1
		else: counts[word] += 1
		
print counts