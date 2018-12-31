#fhandle = open("words.txt")
zetext = "There once lived a dog and a cat in a big house"
zetext = zetext.split()
words = dict()

for word in zetext:
	words[word] = words.get(word, 0)

print zetext
print "==================="
print words


#Not using get() method. Kinda made it a wordcounter too.
zetext = "There once lived a dog and a cat in a big house"
zetext = zetext.split()
words = dict()

for word in zetext:
	if word not in words:
		words[word] = 1
	else: words[word] = words[word] + 1

print zetext
print "==================="
print words

