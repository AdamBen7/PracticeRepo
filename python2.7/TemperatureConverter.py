choice = raw_input("Would you like to convert from Celsius or from Farenheit?")

if choice == 'Celsius': 
	Celsius = raw_input("What is the temperature in terms of degrees Celsius?")
	Celsius = float(Celsius)
	Farenheit = (9.0/5)*(Celsius)+ 32
	print Farenheit, "F"
	
elif choice == 'Farenheit': 
	Farenheit = raw_input ("What is the temperature in terms of degrees Farenheit?")
	Farenheit = float(Farenheit)
	Celsius = float(5.0/9)*(Farenheit - 32)
	print Celsius, "C"	
	
else:
	print "You didn't enter a valid response. Please respond with either Celsius or Farenheit."
	quit()












