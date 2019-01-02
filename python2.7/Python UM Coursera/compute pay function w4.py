def computepay(Hours, Rate):
	if Hours < 40 : 
		TPay = Hours * Rate
		return TPay
	else: 
		TPay = 40 * Rate + (Hours-40)*Rate*1.5
		return TPay

Hours = raw_input("Insert the number of hours the employee worked for:")
Hours = float(Hours)
Rate = raw_input ("Insert the rate of payment:")
Rate= float(Rate)

print computepay(Hours, Rate)

	




