fname = raw_input("Enter a file name: ")
try: fpencil = open(fname, 'w')
except :
	print "This file doesn't exist or you might have misspelled its name!"
	quit()
line1 = "This is the first line \n"
line2 = "This is the second line \n"
fpencil.write(line1)
fpencil.write(line2)
fpencil.close()
filehandle = open(fname, 'r')
print "Done"

while True:
	question = raw_input("Would you like to read the file? Yes or No? ")
	if question == "Yes":
		for line in filehandle:
			line = line.rstrip()
			print line
			
	elif question == "No":
		print "Very well. Bye!"
		quit()
	else:
		print 'Please respond with "Yes" or "No"!'
		continue
	quit()

#cleans the file and replaces its data with line1 and line2. Then displays it.