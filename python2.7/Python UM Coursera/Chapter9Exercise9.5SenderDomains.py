file = raw_input("Enter file name here: ")
if len(file) <1: file = ("mbox-short.txt")

fhandle = open(file)
Senders = dict()

for line in fhandle:
	line = line.rstrip()
	if not line.startswith('From: '): continue #changed this from ("From")
	line = line.split()
	
	for word in line:
		if word == line[1]:
			atpos = word.find('@')
			domain = word[atpos + 1 : ]  #+1 since not including @
			Senders[domain] = Senders.get(domain, 0) +1
		else: continue
print Senders












"""
MostMsg = None
NumberofMsg = None
for name,numb in Senders.items():
	if NumberofMsg is None or NumberofMsg < numb:
		NumberofMsg = numb
		MostMsg = name
print MostMsg, NumberofMsg
"""




