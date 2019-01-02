#Definite Loop means that the loop has been specified how many steps it will do. 
#As for indefinite, it depends on the condition set(which changes)


# Number of letters in the word.


# number of specific letters, in this case, "a"
word = "banana"
count = 0

for letter in word:
	if letter == "a":
		count = count +1

print count

"""
#Definite Loop
fruit = "banana"
for letter in fruit:
	print letter

"""

"""
#Indefinite loop
fruit = "banana"
index = 0
while index < len(fruit):
	letter = fruit[index]
	print index, letter
	index = index + 1
"""


#store memory
"""
x = "dragon platebody"
a=len(x)
b=len("dragon") 
c=len("platebody")

print a, b , c #prints # of letters in each word. x includes the space

print dragon[5]  #prints 6th letter
"""
