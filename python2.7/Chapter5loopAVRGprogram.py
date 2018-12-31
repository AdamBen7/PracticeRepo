
print 'Say "Done" when you have entered all inputs!'

count = 0
sum = 0

while True:
	inpt = raw_input("Enter a number: ")
	if inpt == "Done" or "done": break
	try: 
		float(inpt)
	except:
		print "This isn't a number. Please place a numerical value!"
		quit()
	print inpt
	print type(inpt)
	count = count +1
	sum = sum + float(inpt)

if count != 0:
	Avg = sum/count

print Avg