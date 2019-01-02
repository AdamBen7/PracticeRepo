

When you want to print a variable with a string, 
there is a better method than concatenating strings together.

name = "Mike"
print "Hello %s" % (name)

The % operator after a string is used to combine a string 
with variables. The % operator will replace a %s in the s
tring with the string variable that comes after it.


string_1 = "Camelot"
string_2 = "place"

print "Let's not go to %s. 'Tis a silly %s." % (string_1, string_2)



Remember, we used the % operator to replace
the %s placeholders with the variables in parentheses.

name = "Mike"
print "Hello %s" % (name)

You need the same number of %s terms in a string as 
the number of variables in parentheses:

print "The %s who %s %s!" % ("Knights", "say", "Ni")
# This will print "The Knights who say N



