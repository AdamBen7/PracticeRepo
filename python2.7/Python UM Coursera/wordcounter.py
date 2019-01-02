









	
	
	

#Get the name of the file and open it
name = raw_input('enter file:')
handle = open(name,'r')
text = handle.read()
words = text.split()


#Count word frequency
counts = dict()
for word in words:
	counts[word] = counts.get(word,0)+1


#Find the most common word
bigcount = None
bigword = None 
for word,count in counts.items():
	if bigcount is None or count > bigcount:
		bigword = word
		bigcount = count


#All done
print bigword, bigcount