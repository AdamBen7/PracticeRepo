#Number of hours
Hours = raw_input("How many hours did the employee work?")
try: 
	Hours = float(Hours)
except: 
	Hours = -1
if Hours < -1:
	print "Error, you did not enter a numerical value"
	quit()
	
#Rate of payment
Rate = raw_input("What is the rate of your payment?")
try: 
	Rate= float(Rate)
except:
	Rate = -1
if Rate < 0:
	print "Error, you did not enter a numerical value"
	quit()

#Calculate total payment	
if Hours > 40: 
	TPay = (40*Rate) + ((Hours-40)*1.5*Rate)
else:
	TPay = Rate * Hours

print "Total Payment:", TPay	
	
	
	
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