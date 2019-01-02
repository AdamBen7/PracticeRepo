# LOOPS!




largest = None
smallest = None

while True:
	num = raw_input( "Enter a number: ")
	if num == "done": break
	try:
		num = int(num)
	except:
		print "Invalid input. Please place a number!"
		continue
		
	if largest is None or num > largest:
		largest = num
	if smallest is None or num < smallest:
		smallest = num

print "Maximum", largest
print "Minimum", smallest


"""
# another average code using try/except and continue
count = 0
total = 0

while True:
	inp = raw_input("Enter a number: ")
	
	
	#dont put count here!  Tgus place handles the edge cases.
	if inp == "done": break
	if len(inp) < 1: break #to check for empty line
	
	
	#does the work
	try:
		num = float(inp)
	except:
		print "Invalid input!"
		continue
	count = count + 1
	total = total + num

print "Average", total/count
"""










"""
#Smallest So Far. Using "None"
smallest = None
for value in [9, 41, 12, 3, 74, 15]:
	if smallest is None:	# is is same as ==. But is shouldn't be used too much
		smallest = value
	elif value < smallest:
		smallest = value
	print smallest, value
	
print "The Truly smallest number is", smallest
"""





# Search using a "Boolean" Variable. False and True are capitalized. 
"""
found = False
print "Before", found
for value in [9, 41, 12, 3, 74, 15]:
	if value == 3: 						#Value we're looking for
		found = True
		break
print "We found the value you were looking for.", found
"""


#Filtering in a Loop: You should use 'if' statement
"""
print 'Before'
for value in [9, 41, 12, 3, 74, 15]:
	if value > 20:
		print 'Large number is', value
print 'After'
"""


#Average in a Loop
""" 
count = 0
sum = 0
print "Before: sum/count", sum, count 
for value in [9, 41, 12, 3, 74, 15]:
	count = count + 1
	sum = sum + value
	print value, count, sum
average = sum/count
print "The Average of the set is", average
"""
 

# Summing in a Loop
"""
zork = 0
for thing in [9, 41, 12, 3, 74, 15]:
	zork = zork + thing
	print zork, thing
print "The Sum is:", zork
"""
 
 
 
 
# Counting in a Loop
"""
zork = 0
print "Before", zork
for thing in [9, 41, 12, 3, 74, 15]:
	zork = zork + 1
	
	print zork, thing
print "After", zork
""" 
 
 
 
 
 # Largest SO FAR PROGRAM
"""
largest_now = -1
print "Starting with", largest_now
for the_num in [9, 41, 12, 3, 74, 15]:
	if the_num > largest_now:
		largest_now = the_num
	print largest_now, the_num
	
print "The Truly largest number is", largest_now
"""