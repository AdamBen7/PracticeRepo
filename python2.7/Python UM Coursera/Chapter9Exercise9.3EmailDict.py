file = raw_input("Enter file name here: ")
if len(file) <1: file = ("mbox-short.txt")

fhandle = open(file)
Senders = dict()

for line in fhandle:
	line = line.rstrip()
	if not line.startswith('From'): continue
	line = line.split()
	
	for word in line:
		if word == line[1]:
			Senders[word] = Senders.get(word, 0) +1
		else: continue
print Senders