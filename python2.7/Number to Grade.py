score = raw_input("What is your numerical score?")
try:
	score = float(score)
except:
	print "ERROR! You did not enter a numerical score!"
	quit()
	
if score >= 0.9: print "A"
elif score >=0.8: print "B"
elif scrore >=0.7: print "C"
elif score >=0.6: print "D"
else: print "F"













	
	
	
"""
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
	if bigcount is None or count > bigcount
		bigword = word
		bigcount = count


#All done
print bigword, bigcount
"""