#alphabets = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
"""figure out who has the sent the greatest number of mail messages. 
The program looks for 'From ' lines and takes the second word of those 
lines as the person who sent the mail. The program creates a Python
dictionary that maps the sender's mail address to a count of the number 
of times they appear in the file. After the dictionary is produced, the 
program reads through the dictionary using a maximum loop to find the most prolific committer.
"""

# name = raw_input("Enter file:")
# if len(name) < 1 : name = "mbox-short.txt"
# handle = open(name)


data = open("mbox-short.txt") #easier way of opening file while debugging
mailad = dict()

#making a list usable
for line in data:
	line = line.rstrip()
	if not line.startswith('From '): continue
	words = line.split()
	
#tricky part for me. Getting 2nd element of list and counting it to put value. All into dictionary	
	for word in words:
		if word == words[1]:
			mailad[word] = mailad.get(word, 0) + 1
	
	
#the calculator	
mostprolific = None
thenum = None
for address,numb in mailad.items():
	if thenum == None or numb > thenum: 
		thenum = numb
		mostprolific = address
print mostprolific, thenum

#took me 1hour and half of de-bugging...