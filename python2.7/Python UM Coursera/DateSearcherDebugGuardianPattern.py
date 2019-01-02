"""
#debuggying this code:
file = raw_input("mbox")
fhand = open(file)

for line in fhand:
	line = line.rstrip()
	words = line.split()
	if words[0] is not "From": continue
	print words[2]
"""


file =('mbox-short.txt') #deleted input prompt...
fhand = open(file)


for line in fhand:
	line = line.rstrip()
	words = line.split()
	if words == [] : continue  				#guardian pattern for empty set to not ruin next line
	if words[0] != "From": continue
	print words[2]

	
#we could use other things:
#if len(words) < 1: continue
#if line == ' ': continue  #place this after rstrip()!!
#avoid try-except method..






