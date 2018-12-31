file = raw_input("Enter file name here: ")
if len(file) <1: file = ("mbox-short.txt")
fhandle = open(file)
DaysReceived = dict()
for line in file:
	line = line.rstrip()
	line = line.split()
	# print line
	for word in line:
		if word == line[3]:
			DaysReceived[word] = DaysReceived.get(word, 0) +1
		else: continue
print DaysReceived