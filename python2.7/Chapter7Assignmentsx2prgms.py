"""
# Use words.txt as the file name
fname = raw_input("Enter file name: ")
try: fhandle = open(fname)
except:
	print "Sorry, the file you requested was not found!"
	exit()
for lines in fhandle:
	lines = lines.rstrip()
	print lines.upper()
"""	
#________________________________________________________________#

# Use the file name mbox-short.txt as the file name
"""
Write a program that prompts for a file name, 
then opens that file and reads through the file,
 looking for lines of the form:

X-DSPAM-Confidence:    0.8475

Count these lines and extract the floating point values from each of the lines 
and compute the average of those values and produce an output as shown below.

You can download the sample data at 
http://www.pythonlearn.com/code/mbox-short.txt 
when you are testing below enter mbox-short.txt as the file name.
"""

count = 0
total = 0

fname = raw_input("Enter a file name: ")

try:
	fhandle = open(fname)

except: 
	print 'Sorry! We did not find', '"'+fname+'"'+'!'
	exit()
	
for line in fhandle:
	if not line.startswith("X-DSPAM-Confidence:"): continue
	count = count +1
	collonpos = line.find(':')
	#print collonpos
	npos = line.find('\n')
	#print npos
	data = line[collonpos+1:npos]
	total = total +float(data) 
	
print 'Average spam confidence:',total/count

